//
//  File.swift
//  File
//
//  Created by Leo Dion on 8/25/21.
//

import Foundation
import Prch
import protocol Vapor.Client
import struct Vapor.ClientRequest
import struct Vapor.URI


struct VaporSession<ClientType : Client> : Session {
  let client: ClientType
  typealias RequestType = Void
  
  func createRequest<ResponseType>(_ request: APIRequest<ResponseType>, withBaseURL baseURL: URL, andHeaders header: [String : String]) throws -> Void where ResponseType : APIResponseValue {
    URI(scheme: <#T##URI.Scheme#>, host: <#T##String?#>, port: <#T##Int?#>, path: <#T##String#>, query: <#T##String?#>, fragment: <#T##String?#>)
    
    let scheme = URI.Scheme(baseURL.scheme)
    let host = baseURL.host
    let port = baseURL.port
    let path = baseURL.appendingPathComponent(request.path).path
    fatalError()
    //ClientRequest.init(method: <#T##HTTPMethod#>, url: <#T##URI#>, headers: <#T##HTTPHeaders#>, body: <#T##ByteBuffer?#>)
//    guard var componenets = URLComponents(url: baseURL.appendingPathComponent(request.path), resolvingAgainstBaseURL: false) else {
//      throw APIClientError.badURL(baseURL, request.path)
//    }
//
//    // filter out parameters with empty string value
//    var queryItems = [URLQueryItem]()
//    for (key, value) in request.queryParameters {
//      if !String(describing: value).isEmpty {
//        queryItems.append(URLQueryItem(name: key, value: String(describing: value)))
//      }
//    }
//    componenets.queryItems = queryItems
//
//    guard let url = componenets.url else {
//      throw APIClientError.urlComponents(componenets)
//    }
//
//    var urlRequest = URLRequest(url: url)
//    urlRequest.httpMethod = request.service.method
//
//    urlRequest.allHTTPHeaderFields = request.headers.merging(headers, uniquingKeysWith: { requestHeaderKey, _ in
//      requestHeaderKey
//    })
//
//    if let encodeBody = request.encodeBody {
//      urlRequest.httpBody = try encodeBody(JSONEncoder())
//    }
//    return urlRequest
  }
  
  func beginRequest(_ request: Void, _ completion: @escaping ((APIResult<Response>) -> Void)) -> Task {
    
  }
}
