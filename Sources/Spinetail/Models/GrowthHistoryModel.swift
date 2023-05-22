import Foundation

import PrchModel
/** A month-by-month summary of a specific list's growth activity. */
public struct GrowthHistoryModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** An array of objects, each representing a monthly growth report for a list. */
  public var history: [GrowthHistoryModel]?

  /** The list id. */
  public var listId: String?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, history: [GrowthHistoryModel]? = nil, listId: String? = nil, totalItems: Int? = nil) {
    self.links = links
    self.history = history
    self.listId = listId
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case history
    case listId = "list_id"
    case totalItems = "total_items"
  }
}
