import Foundation

public protocol Response {
  var statusCode: Int? { get }
  var data: Data? { get }
}

#if canImport(FoundationNetworking)
  import FoundationNetworking
#endif

struct URLSessionResponse: Response {
  let response: URLResponse?
  let data: Data?

  var statusCode: Int? {
    (response as? HTTPURLResponse)?.statusCode
  }

  static func resultBasedOnResponse(_ response: URLResponse?, data: Data?, error: Error?) -> APIResult<Response> {
    if let error = error {
      return .failure(.networkError(error))
    } else {
      return .success(URLSessionResponse(response: response, data: data))
    }
  }
}
