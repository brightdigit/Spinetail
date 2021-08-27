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

public struct MailchimpAPIKey : StorageKey {
  public typealias Value = MailchimpAPI
}


extension Application {
  public class Mailchimp {
    public struct API : StorageKey {
      public typealias Value = MailchimpAPI
    }
    public struct APIClient : StorageKey {
      public typealias Value = MailchimpAPI
    }
    let application : Application
    
    var apiKey: String?
    var api: MailchimpAPI!
    var client: APIClient<VaporSession>
  }
}

extension Application {
  var mailchimpAPIKey: String? {
    get {
      self.storage[MailchimpAPIKey.self]?.apiKey
    }
    set {
      if let value = newValue {
        if let mailchimpAPI = MailchimpAPI(apiKey: value) {
          self.storage[MailchimpAPIKey.self] = mailchimpAPI
        }
      }
    }
  }
  
  var mailchimpAPI : MailchimpAPI! {
    get {
      return self.storage[MailchimpAPIKey.self]
    }
  }
  
  public var mailchimp : APIClient<VaporSession>{
    guard let apiKey = self.mailchimpAPIKey else {
      fatalError("set mailchimp API Key")
    }
    return APIClient(api: mailchimpAPI, session: VaporSession(client: self.client))
  }
}

extension Request {
  private struct MailchimpKey: StorageKey {
    typealias Value = APIClient<VaporSession>
  }
  
  public var mailchimp: APIClient<VaporSession> {
    if let existing = application.storage[MailchimpKey.self] {
      return existing.hopped(to: self.eventLoop)
    }
    let client = return APIClient(api: self.application.mailchimpAPI, session: VaporSession(client: self.client))
    self.application.storage[StripeKey.self] = client
    return client
  }
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
