import Foundation

/** Information about this list&#x27;s interest categories. */

public struct InterestGroupings: Codable {
  /** The ID for the list that this category belongs to. */
  public var listId: String?
  /** This array contains individual interest categories. */
  public var categories: [InterestCategory3]?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(listId: String? = nil, categories: [InterestCategory3]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.listId = listId
    self.categories = categories
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case listId = "list_id"
    case categories
    case totalItems = "total_items"
    case links = "_links"
  }
}
