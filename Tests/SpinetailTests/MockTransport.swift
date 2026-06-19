import Foundation
import HTTPTypes
import OpenAPIRuntime

/// A `ClientTransport` that returns pre-canned JSON bodies keyed by URL path.
///
/// Records every request it receives (path and `Authorization` header) so tests
/// can assert on routing and authentication. All mutable state is guarded by an
/// `NSLock` so the transport is safely `Sendable` under strict concurrency.
internal final class MockTransport: ClientTransport, Sendable {
  private let lock = NSLock()
  /// JSON response bodies keyed by URL path; consumed in order per path.
  nonisolated(unsafe) private var responses: [String: [String]]
  /// Every request URL path the transport observed, in order.
  nonisolated(unsafe) private var observedPaths: [String] = []
  /// Every `Authorization` header value observed, in order.
  nonisolated(unsafe) private var observedAuthorizationHeaders: [String] = []
  /// Status code returned for every request.
  private let status: Int
  /// `Content-Type` returned for every response body.
  private let contentType: String

  /// Every request URL path the transport observed, in order.
  internal var requestedPaths: [String] {
    lock.withLock { observedPaths }
  }

  /// Every `Authorization` header value observed, in order.
  internal var authorizationHeaders: [String] {
    lock.withLock { observedAuthorizationHeaders }
  }

  internal init(
    responses: [String: [String]],
    status: Int = 200,
    contentType: String = "application/json"
  ) {
    self.responses = responses
    self.status = status
    self.contentType = contentType
  }

  internal func send(
    _ request: HTTPRequest,
    body _: HTTPBody?,
    baseURL _: URL,
    operationID _: String
  ) async throws -> (HTTPResponse, HTTPBody?) {
    let path = request.path ?? ""
    let key = String(path.split(separator: "?").first ?? "")
    let authorization = request.headerFields[.authorization]

    let json: String? = lock.withLock {
      observedPaths.append(path)
      if let authorization {
        observedAuthorizationHeaders.append(authorization)
      }
      guard var queue = responses[key], !queue.isEmpty else {
        return nil
      }
      let next = queue.removeFirst()
      responses[key] = queue
      return next
    }

    guard let json else {
      return (HTTPResponse(status: .init(code: 404)), nil)
    }

    let response = HTTPResponse(
      status: .init(code: status),
      headerFields: [.contentType: contentType]
    )
    return (response, HTTPBody(json))
  }
}
