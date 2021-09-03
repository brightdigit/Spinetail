import Foundation


#if canImport(FoundationNetworking)
  import FoundationNetworking
#endif

extension URLSession: Session {
  public func beginRequest(_ request: URLRequest, _ completion: @escaping ((APIResult<Response>) -> Void)) -> Task {
    let task = dataTask(with: request) { data, response, error in
      completion(URLSessionResponse.resultBasedOnResponse(response, data: data, error: error))
    }
    task.resume()
    return task
  }

  public func createRequest<ResponseType>(_ request: APIRequest<ResponseType>, withBaseURL baseURL: URL, andHeaders headers: [String: String]) throws -> URLRequest where ResponseType: APIResponseValue {
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

    var urlRequest = URLRequest(url: url)
    urlRequest.httpMethod = request.service.method

    urlRequest.allHTTPHeaderFields = request.headers.merging(headers, uniquingKeysWith: { requestHeaderKey, _ in
      requestHeaderKey
    })

    if let encodeBody = request.encodeBody {
      urlRequest.httpBody = try encodeBody(JSONEncoder())
    }
    return urlRequest
  }
}
