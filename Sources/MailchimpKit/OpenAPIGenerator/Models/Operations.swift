import Foundation

public struct Operations: Codable {
  public enum Method: String, Codable {
    case _get = "GET"
    case post = "POST"
    case put = "PUT"
    case patch = "PATCH"
  }

  /** The HTTP method to use for the operation. */
  public var method: Method
  /** The relative path to use for the operation. */
  public var path: String
  /** Any request query parameters. Example parameters: {\&quot;count\&quot;:10, \&quot;offset\&quot;:0} */
  public var params: [String: String]?
  /** A string containing the JSON body to use with the request. */
  public var body: String?
  /** An optional client-supplied id returned with the operation results. */
  public var operationId: String?

  public init(method: Method, path: String, params: [String: String]? = nil, body: String? = nil, operationId: String? = nil) {
    self.method = method
    self.path = path
    self.params = params
    self.body = body
    self.operationId = operationId
  }

  public enum CodingKeys: String, CodingKey {
    case method
    case path
    case params
    case body
    case operationId = "operation_id"
  }
}
