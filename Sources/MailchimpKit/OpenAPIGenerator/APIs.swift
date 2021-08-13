import Foundation

open class SwaggerClientAPI {
  public static func setup(dc: String? = nil, apiKey: String) {
    let actualDC: String?
    if let _dc = dc {
      actualDC = _dc
    } else if let dc = apiKey.components(separatedBy: "-").last {
      actualDC = dc
    } else {
      actualDC = nil
    }

    if let dc = actualDC {
      basePath = "https://\(dc).api.mailchimp.com/3.0"
    }

    if let userAndPassword = "anystring:\(apiKey)".data(using: .utf8)?.base64EncodedString() {
      customHeaders["Authorization"] = "Basic \(userAndPassword)"
    }
  }

  public static var basePath = "https://server.api.mailchimp.com/3.0"
  public static var credential: URLCredential?
  public static var customHeaders: [String: String] = [:]
  public static var requestBuilderFactory: RequestBuilderFactory = AlamofireRequestBuilderFactory()
}

open class RequestBuilder<T> {
  var credential: URLCredential?
  var headers: [String: String]
  public let parameters: [String: Any]?
  public let isBody: Bool
  public let method: String
  public let URLString: String

  /// Optional block to obtain a reference to the request's progress instance when available.
  public var onProgressReady: ((Progress) -> Void)?

  public required init(method: String, URLString: String, parameters: [String: Any]?, isBody: Bool, headers: [String: String] = [:]) {
    self.method = method
    self.URLString = URLString
    self.parameters = parameters
    self.isBody = isBody
    self.headers = headers

    addHeaders(SwaggerClientAPI.customHeaders)
  }

  open func addHeaders(_ aHeaders: [String: String]) {
    for (header, value) in aHeaders {
      headers[header] = value
    }
  }

  open func execute(_: @escaping (_ response: Response<T>?, _ error: Error?) -> Void) {}

  public func addHeader(name: String, value: String) -> Self {
    if !value.isEmpty {
      headers[name] = value
    }
    return self
  }

  open func addCredential() -> Self {
    credential = SwaggerClientAPI.credential
    return self
  }
}

public protocol RequestBuilderFactory {
  func getNonDecodableBuilder<T>() -> RequestBuilder<T>.Type
  func getBuilder<T: Decodable>() -> RequestBuilder<T>.Type
}
