//
//  File.swift
//  File
//
//  Created by Leo Dion on 8/31/21.
//

import Prch
import Vapor
import PrchNIO

extension ClientResponse : Prch.Response {
  public var data: Data? {
    self.body.map{
      Data(buffer: $0)
    }
  }
  
  public var statusCode: Int? {
    Int(self.status.code)
  }
}
public struct SessionClient : EventLoopSession {
  public init(client: Client) {
    self.client = client
  }
  
  public func nextEventLoop() -> EventLoop {
    self.client.eventLoop
  }
  
  let client : Client
  public func beginRequest(_ request: ClientRequest) -> EventLoopFuture<Prch.Response> {
    self.client.send(request).map{ $0 as Prch.Response}
  }
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
