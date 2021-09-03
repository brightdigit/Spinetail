import Foundation
import Prch
import AsyncHTTPClient
import NIOCore
import NIOHTTP1

public protocol EventLoopSession : Session {
  func beginRequest(_ request: RequestType) -> EventLoopFuture<Response>
  
  func nextEventLoop () -> EventLoop
}

extension EventLoopFuture : Task {
  
}

public extension EventLoopSession {
  func beginRequest(_ request: RequestType, _ completion: @escaping ((APIResult<Response>) -> Void)) -> Task {
    self.beginRequest(request).always({ result in
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
}

extension HTTPClient.Response : Response {
  public var statusCode: Int? {
    Int(self.status.code)
  }
  
  public var data: Data? {
    self.body.map{
      Data(buffer: $0)
    }
  }
  
  
}

extension HTTPClient : EventLoopSession {
  
  public func nextEventLoop() -> EventLoop {
    self.eventLoopGroup.next()
  }
  public func beginRequest(_ request: HTTPClient.Request) -> EventLoopFuture<Prch.Response> {
    self.execute(request: request).map{$0 as Prch.Response}
  }
  
  public func createRequest<ResponseType>(_ request: APIRequest<ResponseType>, withBaseURL baseURL: URL, andHeaders headers: [String : String]) throws -> HTTPClient.Request where ResponseType : APIResponseValue {
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

    guard let url = componenets.url else {
      throw APIClientError.urlComponents(componenets)
    }

    let method = HTTPMethod(rawValue: request.service.method)
    
    let headers = HTTPHeaders(request.headers.merging(headers, uniquingKeysWith: { requestHeaderKey, _ in
      requestHeaderKey
    }).map({$0}))

   
    let body : Body?
    if let encodeBody = request.encodeBody {
      body = try Body.data(encodeBody(JSONEncoder()))
    } else {
      body = nil
    }
    return try HTTPClient.Request(url: url, method: method, headers: headers, body: body)
  }
}


public extension APIClient where SessionType : EventLoopSession {
  func request<ResponseType>(_ request: APIRequest<ResponseType>) -> EventLoopFuture<ResponseType> {
    var sessionRequest: SessionType.RequestType
    do {
      sessionRequest = try session.createRequest(request, withBaseURL: api.baseURL, andHeaders: api.headers)
    } catch {
      return self.session.nextEventLoop().makeFailedFuture(APIClientError.requestEncodingError(error))
    }

    return session.beginRequest(sessionRequest).flatMapThrowing({ response in
      guard let httpStatus = response.statusCode else {
        throw APIClientError.invalidResponse
      }
      let data = response.data ?? Data()
      return try ResponseType(statusCode: httpStatus, data: data, decoder: self.api.decoder)
    })
  }
}
