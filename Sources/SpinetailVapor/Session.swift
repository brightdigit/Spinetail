//
//  File.swift
//  File
//
//  Created by Leo Dion on 8/25/21.
//

import Foundation
import protocol Prch.Response
import protocol Prch.Task
import protocol Prch.Session
import protocol Prch.APIResponseValue
import class Prch.APIClient
import class Prch.APIRequest
import enum Prch.APIResult
import enum Prch.APIClientError

import Vapor
import NIOHTTP1
import NIOCore
import NIO

import Spinetail

enum MailchimpError : Error {
  case invalidAPIKey(String)
}
extension Application {
  public class Mailchimp {
    internal init(application: Application) {
      self.application = application
      self.savedClient = nil
    }
    


    public struct Key : StorageKey {
      public typealias Value = Mailchimp
    }
    let application : Application
    var savedClient: APIClient<VaporSession>?
    
    public func configure(withAPIKey apiKey: String) throws {
      guard let api = MailchimpAPI(apiKey: apiKey) else {
        throw MailchimpError.invalidAPIKey(apiKey)
      }
      self.savedClient = .init(api: api, session: VaporSession(client: application.client))
    }
    
    
    public var client : APIClient<VaporSession> {
      guard let client = self.savedClient else {
        fatalError("Missing configure with APIKey call.")
      }
      return client
    }
    
  }
}

extension Application {
  public var mailchimp : Application.Mailchimp {
    get {
      guard let mailchimp = self.storage[Mailchimp.Key] else {
        let mailchimp = Mailchimp(application: self)
        self.storage[Mailchimp.Key] = mailchimp
        return mailchimp
      }
      return mailchimp
    }      
  }
//  public var mailchimpAPIKey: String? {
//    get {
//      self.storage[MailchimpAPIKey.self]?.apiKey
//    }
//    set {
//      if let value = newValue {
//        if let mailchimpAPI = MailchimpAPI(apiKey: value) {
//          self.storage[MailchimpAPIKey.self] = mailchimpAPI
//        }
//      }
//    }
//  }
//
//  var mailchimpAPI : MailchimpAPI! {
//    get {
//      return self.storage[MailchimpAPIKey.self]
//    }
//  }
//
//  public var mailchimp : APIClient<VaporSession>{
//    guard let apiKey = self.mailchimpAPIKey else {
//      fatalError("set mailchimp API Key")
//    }
//    return APIClient(api: mailchimpAPI, session: VaporSession(client: self.client))
//  }
}

extension Request {

  
  public var mailchimp: APIClient<VaporSession> {
    let mailchimp = self.storage[Application.Mailchimp.Key]
    
    fatalError()
//    if let existing = application.storage[MailchimpKey.self] {
//      return existing.hopped(to: self.eventLoop)
//    }

  }
}



extension ClientResponse : Response {
  public var statusCode: Int? {
    Int(self.status.code)
  }
  
  public var data: Data? {
    return self.body.map{
      Data(buffer: $0)
    }
  }
}


extension EventLoopFuture : Task {
  
}
public struct VaporSession : Session {
  public func beginRequest(_ request: ClientRequest, _ completion: @escaping ((APIResult<Response>) -> Void)) -> Task {
    client.send(request).always({ result in
      let newResult : APIResult<Response>
      switch result {
      case .failure(let error):
        newResult = .failure(.networkError(error))
      case .success(let response):
        newResult = .success( response)
      }
      completion(newResult)
    })
  }
  
  let client: Client
  public typealias RequestType = ClientRequest
  
  public func createRequest<ResponseType>(_ request: APIRequest<ResponseType>, withBaseURL baseURL: URL, andHeaders headers: [String : String]) throws -> ClientRequest where ResponseType : APIResponseValue {
    guard var componenets = URLComponents(url: baseURL.appendingPathComponent(request.path), resolvingAgainstBaseURL: false) else {
      throw APIClientError.badURL(baseURL, request.path)
    }
    
    var queryItems = [URLQueryItem]()
    for (key, value) in request.queryParameters {
      if !String(describing: value).isEmpty {
        queryItems.append(URLQueryItem(name: key, value: String(describing: value)))
      }
    }
    componenets.queryItems = queryItems
    
    var urlRequest = ClientRequest()
    
    let uri = URI(scheme: .init(componenets.scheme), host: componenets.host, port: componenets.port, path: componenets.path, query: componenets.query, fragment: componenets.fragment)
    
    urlRequest.url = uri
    
    urlRequest.method = HTTPMethod(rawValue: request.service.method)
    
    urlRequest.headers = HTTPHeaders(request.headers.merging(headers, uniquingKeysWith: { requestHeaderKey, _ in
      requestHeaderKey
    }).map({$0}))
    
    if let encodeBody = request.encodeBody {
      urlRequest.body = try  ByteBuffer(data: encodeBody(JSONEncoder()))
    }
    return urlRequest
  }
  
}
