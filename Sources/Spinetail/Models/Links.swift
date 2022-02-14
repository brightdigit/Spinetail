import Foundation
import Prch

/** This object represents a link from the resource where it is found to another resource or action that may be performed. */
public struct Links: Model {
  /** The HTTP method that should be used when accessing the URL defined in 'href'. */
  public enum Method: String, Codable, Equatable, CaseIterable {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case patch = "PATCH"
    case delete = "DELETE"
    case options = "OPTIONS"
    case head = "HEAD"
  }

  /** This property contains a fully-qualified URL that can be called to retrieve the linked resource or perform the linked action. */
  public var href: String?

  /** The HTTP method that should be used when accessing the URL defined in 'href'. */
  public var method: Method?

  /** As with an HTML 'rel' attribute, this describes the type of link. */
  public var rel: String?

  /** For HTTP methods that can receive bodies (POST and PUT), this is a URL representing the schema that the body should conform to. */
  public var schema: String?

  /** For GETs, this is a URL representing the schema that the response should conform to. */
  public var targetSchema: String?

  public init(href: String? = nil, method: Method? = nil, rel: String? = nil, schema: String? = nil, targetSchema: String? = nil) {
    self.href = href
    self.method = method
    self.rel = rel
    self.schema = schema
    self.targetSchema = targetSchema
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    href = try container.decodeIfPresent("href")
    method = try container.decodeIfPresent("method")
    rel = try container.decodeIfPresent("rel")
    schema = try container.decodeIfPresent("schema")
    targetSchema = try container.decodeIfPresent("targetSchema")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(href, forKey: "href")
    try container.encodeIfPresent(method, forKey: "method")
    try container.encodeIfPresent(rel, forKey: "rel")
    try container.encodeIfPresent(schema, forKey: "schema")
    try container.encodeIfPresent(targetSchema, forKey: "targetSchema")
  }
}
