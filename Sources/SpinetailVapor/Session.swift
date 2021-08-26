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

public protocol MailchimpClient {
  
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
  
  var mailchimpAPI : MailchimpAPI? {
    get {
      return self.storage[MailchimpAPIKey.self]
    }
  }
  
  public var mailchimp : APIClient<VaporSession>{
        guard let apiKey = self.mailchimpAPIKey else {
            fatalError("set mailchimp API Key")
        }
    guard let mailchimpAPI = MailchimpAPI(apiKey: apiKey) else {
      fatalError("invalid API KEY")
    }
    let item = APIClient(api: mailchimpAPI, session: VaporSession(client: self.client))
    return item
    }
}

//extension Request {
//    private struct StripeKey: StorageKey {
//        typealias Value = StripeClient
//    }
//    public var stripe: StripeClient {
//        if let existing = application.storage[StripeKey.self] {
//            return existing.hopped(to: self.eventLoop)
//        } else {
//            guard let stripeKey = Environment.get("STRIPE_API_KEY") else {
//                fatalError("STRIPE_API_KEY env var required")
//            }
//            let new = StripeClient(httpClient: self.application.http.client.shared,
//                                   eventLoop: self.eventLoop,
//                                   apiKey: stripeKey)
//            self.application.storage[StripeKey.self] = new
//            return new
//        }
//    }
//}


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
//struct VaporResponse : Response {
//  var statusCode: Int? {
//    response.status.code as Int
//  }
//
//  var data: Data? {
//    response.body.map(Data.init(buffer:))
//  }
//
//  let response : ClientResponse
//}

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
//    URI(scheme: <#T##URI.Scheme#>, host: <#T##String?#>, port: <#T##Int?#>, path: <#T##String#>, query: <#T##String?#>, fragment: <#T##String?#>)
//
//    let scheme = URI.Scheme(baseURL.scheme)
//    let host = baseURL.host
//    let port = baseURL.port
//    let path = baseURL.appendingPathComponent(request.path).path
//    fatalError()
    //ClientRequest.init(method: <#T##HTTPMethod#>, url: <#T##URI#>, headers: <#T##HTTPHeaders#>, body: <#T##ByteBuffer?#>)
    guard var componenets = URLComponents(url: baseURL.appendingPathComponent(request.path), resolvingAgainstBaseURL: false) else {
      throw APIClientError.badURL(baseURL, request.path)
    }

    // filter out parameters with empty string value
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
    
//    var urlRequest = URLRequest(url: url)
    urlRequest.method = HTTPMethod(rawValue: request.service.method)
    //urlRequest.headers =
//
    urlRequest.headers = HTTPHeaders(request.headers.merging(headers, uniquingKeysWith: { requestHeaderKey, _ in
      requestHeaderKey
    }).map({$0}))
//
    if let encodeBody = request.encodeBody {
      urlRequest.body = try  ByteBuffer(data: encodeBody(JSONEncoder()))
    }
    return urlRequest
  }
  
}
