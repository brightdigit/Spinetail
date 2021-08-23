import Foundation

#if canImport(FoundationNetworking)
import FoundationNetworking
#endif


extension URLSession: Session {

  public func beginRequest(_ request: URLRequest, _ completion: @escaping ((Result<Response, Error>) -> Void)) -> Task {
    let task = dataTask(with: request) { data, response, error in
      completion(URLSessionResponse.resultBasedOnResponse(response, data: data, error: error))
    }
    task.resume()
    return task
  }

  public func createRequest<ResponseType>(_ request: APIRequest<ResponseType>, withBaseURL baseURL: URL, andHeaders headers: [String: String]) throws -> URLRequest where ResponseType: APIResponseValue {
    guard var componenets = URLComponents(url: baseURL.appendingPathComponent(request.path), resolvingAgainstBaseURL: false) else {
      throw NSError()
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
      throw NSError()
    }

    var urlRequest = URLRequest(url: url)
    urlRequest.httpMethod = request.service.method

    urlRequest.allHTTPHeaderFields = request.headers.merging(headers, uniquingKeysWith: { requestHeaderKey, _ in
      requestHeaderKey
    })

//    if !queryParams.isEmpty {
//      urlRequest = try URLEncoding.queryString.encode(urlRequest, with: queryParams)
//    }

//    var formParams: [String: Any] = [:]
//    for (key, value) in formParameters {
//      if !String(describing: value).isEmpty {
//        formParams[key] = value
//      }
//    }

//    if !formParams.isEmpty {
//      urlRequest = try URLEncoding.httpBody.encode(urlRequest, with: formParams)
//    }

    if let encodeBody = request.encodeBody {
      urlRequest.httpBody = try encodeBody(JSONEncoder())
      // urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
    }
    return urlRequest
  }
}
