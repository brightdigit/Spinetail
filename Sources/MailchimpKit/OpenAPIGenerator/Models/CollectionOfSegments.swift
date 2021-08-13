import Foundation

/** A list of available segments. */

public struct CollectionOfSegments: Codable {
  /** An array of objects, each representing a list segment. */
  public var segments: [List6]?
  /** The list id. */
  public var listId: String?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(segments: [List6]? = nil, listId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.segments = segments
    self.listId = listId
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case segments
    case listId = "list_id"
    case totalItems = "total_items"
    case links = "_links"
  }
}
