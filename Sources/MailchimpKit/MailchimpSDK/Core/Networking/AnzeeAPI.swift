import Foundation

#if canImport(FoundationNetworking)
  import FoundationNetworking
#endif

public enum APIError: Error {
  case jsonParsingError(err: String)
  case requestError(err: Error)
  case requestTimeout
  case apiInvalidURL
  case apiError(response: APIErrorResponse)
  case jsonMissingData
  case jsonMissingResponseData
  case jsonBoom
}

enum HTTPVerb: String {
  case get = "GET"
  case post = "POST"
}

public typealias JSONHash = [String: Any]
typealias CompletionHandler = (Result<Data, APIError>) -> Void

protocol API {
  func process<T: MCAPIRequest>(request: T) -> URLSessionDataTask?
}

struct AnzeeAPI: API {
  /// The API token to use to authenticate to Mailchimp API
  /// Documentation: https://developer.mailchimp.com/documentation/mailchimp/guides/get-started-with-mailchimp-api-3/#authentication
  ///
  /// - Note: The token should take the form of 'abcd...xyz-us0'
  var token: String?

  /// "Base" token portion of the API token
  private var baseToken: String? {
    guard let tok = token?.split(separator: "-").first else { return nil }
    return String(tok)
  }

  /// Datacenter portion of the API token
  private var datacenter: String? {
    guard let dc = token?.split(separator: "-").last else { return nil }
    return String(dc)
  }

  // ----------------------------------------------------------------

  // MARK: - Request Processing

  /// Process the given APIRequest and pass data back.
  ///
  /// - Parameters:
  ///     - request: A request that conforms to the `APIRequest` protocol
  ///
  /// - Returns: `NSURLSessionDataTask?` optional data task
  @discardableResult
  public func process<T: MCAPIRequest>(request: T) -> URLSessionDataTask? {
    guard let urlRequest = buildURLRequest(for: request) else {
      request.requestComplete(.failure(.apiInvalidURL))
      return nil
    }

    switch request.httpVerb() {
    case .get:
      return getJSON(request: urlRequest) { result in
        request.requestComplete(result)
      }

    case .post:
      return postJSON(request: urlRequest, postBody: request.postBody()) { result in
        request.requestComplete(result)
      }
    }
  }

  // ----------------------------------------------------------------

  // MARK: - Wrappers

  /// Execute a GET request for a JSON response. Uses a `URLSessionDataTask` to do the work.
  ///
  /// - Parameters:
  ///     - request: `URLRequest` describing request
  ///     - completionBlock: block to call once the task is complete
  /// - Returns: `URLSessionDataTask` reference to task doing work
  fileprivate func getJSON(request: URLRequest, completionBlock: @escaping CompletionHandler) -> URLSessionDataTask {
    let urlSession = session()
    let task = urlSession.dataTask(with: request) { data, _, responseError -> Void in
      if let err = responseError as NSError? {
        if err.domain == NSURLErrorDomain, err.code == NSURLErrorTimedOut {
          completionBlock(.failure(.requestTimeout))
        } else {
          completionBlock(.failure(.requestError(err: err)))
        }
      } else if let jsonData = data {
        completionBlock(.success(jsonData))
      } else {
        completionBlock(.failure(.jsonMissingData))
      }
    }

    task.resume()
    return task
  }

  /// Execute a POST request. Uses a `URLSessionDataTask` to do the work.
  ///
  /// - Parameters:
  ///     - request: `URLRequest` describing request
  ///     - postBody: `PostBody` An enum with associated values to encode as JSON in body of request
  ///     - completionBlock: block to call once the task is complete
  /// - Returns: `URLSessionDataTask` reference to task doing work
  fileprivate func postJSON<T: Codable, U: PostBodyParamable>(request: URLRequest, postBody: PostBody<T, U>?, completionBlock: @escaping CompletionHandler) -> URLSessionDataTask? {
    var mutableRequest = request

    // Add any POST body params
    if let postBody = postBody {
      switch postBody {
      case let .object(object):
        let jsonEncoder = JSONEncoder()
        do {
          let jsonData = try jsonEncoder.encode(object)
          mutableRequest.httpBody = jsonData
        } catch {
          return nil
        }

      case let .params(params):
        do {
          mutableRequest.httpBody = try JSONSerialization.data(withJSONObject: params, options: JSONSerialization.WritingOptions.prettyPrinted)
        } catch {
          return nil
        }
      }
    }

    let urlSession = session()
    let task = urlSession.dataTask(with: mutableRequest) { data, response, responseError in
      if let err = responseError as NSError? {
        if err.domain == NSURLErrorDomain, err.code == NSURLErrorTimedOut {
          completionBlock(.failure(.requestTimeout))
        } else {
          completionBlock(.failure(.requestError(err: err)))
        }
      } else if let jsonData = data, let errorResponse = try? JSONDecoder().decode(APIErrorResponse.self, from: jsonData) {
        completionBlock(.failure(.apiError(response: errorResponse)))
      } else if let httpResponse = response as? HTTPURLResponse, !(200 ..< 300).contains(httpResponse.statusCode) {
        completionBlock(.failure(.apiError(response: APIErrorResponse(title: nil,
                                                                      status: httpResponse.statusCode,
                                                                      type: "Unexpected response",
                                                                      detail: nil))))
      } else if let jsonData = data {
        completionBlock(.success(jsonData))
      } else {
        completionBlock(.failure(.jsonMissingData))
      }
    }

    task.resume()
    return task
  }

  // ----------------------------------------------------------------

  // MARK: - URL Methods

  /// Build URLRequest from values of our APIRequest.
  ///
  /// Constructs with full URL, HTTP verb, auth headers, etc.
  ///
  /// - Parameters:
  ///     - request: `APIRequest` request wrapping struct
  /// - Returns: `URLRequest?` properly configured. (nil if there was a problem)
  func buildURLRequest<T: MCAPIRequest>(for request: T) -> URLRequest? {
    guard let url = request.url(datacenter: datacenter) else { return nil }

    var urlRequest = URLRequest(url: url)
    urlRequest.httpMethod = request.httpVerb().rawValue

    if case .post = request.httpVerb() {
      urlRequest.setValue("application/json; charset=utf-8", forHTTPHeaderField: "Content-Type")
    }

    if request.requiresAuth() {
      urlRequest.addBasicAuthHeader(username: "apikey", password: baseToken)
    }

    return urlRequest
  }

  // ----------------------------------------------------------------

  // MARK: - URL Session

  /// Create a default session to use with appropriate timeout
  ///
  /// - Returns: `URLSession` with proper configuration
  fileprivate func session() -> URLSession {
    let sessionConfig = URLSessionConfiguration.default
    sessionConfig.timeoutIntervalForRequest = 10
    sessionConfig.timeoutIntervalForResource = 20

    return URLSession(configuration: sessionConfig)
  }
}
