import Foundation

/** This object represents a link from the resource where it is found to another resource or action that may be performed. */

public struct ResourceLink: Codable {
  public enum Method: String, Codable {
    case _get = "GET"
    case post = "POST"
    case put = "PUT"
    case patch = "PATCH"
    case delete = "DELETE"
    case options = "OPTIONS"
    case head = "HEAD"
  }

  /** As with an HTML &#x27;rel&#x27; attribute, this describes the type of link. */
  public var rel: String?
  /** This property contains a fully-qualified URL that can be called to retrieve the linked resource or perform the linked action. */
  public var href: String?
  /** The HTTP method that should be used when accessing the URL defined in &#x27;href&#x27;. */
  public var method: Method?
  /** For GETs, this is a URL representing the schema that the response should conform to. */
  public var targetSchema: String?
  /** For HTTP methods that can receive bodies (POST and PUT), this is a URL representing the schema that the body should conform to. */
  public var schema: String?

  public init(rel: String? = nil, href: String? = nil, method: Method? = nil, targetSchema: String? = nil, schema: String? = nil) {
    self.rel = rel
    self.href = href
    self.method = method
    self.targetSchema = targetSchema
    self.schema = schema
  }
}
