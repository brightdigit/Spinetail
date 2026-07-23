import Foundation
import HTTPTypes
import OpenAPIRuntime

#if canImport(FoundationNetworking)
  import FoundationNetworking
#endif

/// A client middleware that adds HTTP Basic authentication to every request.
///
/// Mailchimp's Marketing API authenticates with HTTP Basic, using any string
/// as the username and the API key as the password. This middleware attaches
/// the corresponding `Authorization` header to outgoing requests.
internal struct AuthenticationMiddleware: ClientMiddleware {
  /// The username component. Mailchimp ignores the value; any non-empty string
  /// works. Defaults to `"anystring"`, matching Mailchimp's documentation.
  private let username: String
  /// The API key, sent as the Basic-auth password.
  private let apiKey: String

  internal init(apiKey: String, username: String = "anystring") {
    self.apiKey = apiKey
    self.username = username
  }

  internal func intercept(
    _ request: HTTPRequest,
    body: HTTPBody?,
    baseURL: URL,
    operationID _: String,
    next: (HTTPRequest, HTTPBody?, URL) async throws -> (HTTPResponse, HTTPBody?)
  ) async throws -> (HTTPResponse, HTTPBody?) {
    var request = request
    let credentials = "\(username):\(apiKey)"
    let encoded = Data(credentials.utf8).base64EncodedString()
    request.headerFields[.authorization] = "Basic \(encoded)"
    return try await next(request, body, baseURL)
  }
}
