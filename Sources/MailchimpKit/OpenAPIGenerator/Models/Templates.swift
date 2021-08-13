import Foundation

/** A list an account&#x27;s available templates. */

public struct Templates: Codable {
  /** All of an account&#x27;s saved or custom templates. */
  public var templates: [TemplateInstance3]?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(templates: [TemplateInstance3]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.templates = templates
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case templates
    case totalItems = "total_items"
    case links = "_links"
  }
}
