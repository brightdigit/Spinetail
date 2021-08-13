import Foundation

/** Up to the previous 180 days of daily detailed aggregated activity stats for a specific list. Does not include AutoResponder or Automation activity. */

public struct ListActivity: Codable {
  /** Recent list activity. */
  public var activity: [DailyListActivity]?
  /** The unique id for the list. */
  public var listId: String?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(activity: [DailyListActivity]? = nil, listId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.activity = activity
    self.listId = listId
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case activity
    case listId = "list_id"
    case totalItems = "total_items"
    case links = "_links"
  }
}
