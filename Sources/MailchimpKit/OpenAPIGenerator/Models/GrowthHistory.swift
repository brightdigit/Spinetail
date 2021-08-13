import Foundation

/** A month-by-month summary of a specific list&#x27;s growth activity. */

public struct GrowthHistory: Codable {
  /** An array of objects, each representing a monthly growth report for a list. */
  public var history: [GrowthHistory2]?
  /** The list id. */
  public var listId: String?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(history: [GrowthHistory2]? = nil, listId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.history = history
    self.listId = listId
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case history
    case listId = "list_id"
    case totalItems = "total_items"
    case links = "_links"
  }
}
