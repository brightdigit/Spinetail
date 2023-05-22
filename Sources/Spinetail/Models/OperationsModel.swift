import Foundation

import PrchModel
public struct OperationsModel: Codable, Equatable, Content {
  /** The HTTP method to use for the operation. */
  public enum Method: String, Codable, Equatable, CaseIterable {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case patch = "PATCH"
    case delete = "DELETE"
  }

  /** The HTTP method to use for the operation. */
  public var method: Method

  /** The relative path to use for the operation. */
  public var path: String

  /** A string containing the JSON body to use with the request. */
  public var body: String?

  /** An optional client-supplied id returned with the operation results. */
  public var operationId: String?

  /** Any request query parameters. Example parameters: {"count":10, "offset":0} */
  public var params: [String: String]?

  public init(method: Method, path: String, body: String? = nil, operationId: String? = nil, params: [String: String]? = nil) {
    self.method = method
    self.path = path
    self.body = body
    self.operationId = operationId
    self.params = params
  }

  public enum CodingKeys: String, CodingKey {
    case method
    case path
    case body
    case operationId = "operation_id"
    case params
  }
}
