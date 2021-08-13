import Foundation

/** An array of objects, each representing an authorized application. */

public struct InlineResponse2001: Codable {
  /** An array of objects, each representing an authorized application. */
  public var apps: [InlineResponse2001Apps]?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(apps: [InlineResponse2001Apps]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.apps = apps
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case apps
    case totalItems = "total_items"
    case links = "_links"
  }
}
