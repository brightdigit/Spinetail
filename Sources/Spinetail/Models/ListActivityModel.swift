import Foundation

import PrchModel
/** Up to the previous 180 days of daily detailed aggregated activity stats for a specific list. Does not include AutoResponder or Automation activity. */
public struct ListActivityModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** Recent list activity. */
  public var activity: [DailyListActivityModel]?

  /** The unique id for the list. */
  public var listId: String?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, activity: [DailyListActivityModel]? = nil, listId: String? = nil, totalItems: Int? = nil) {
    self.links = links
    self.activity = activity
    self.listId = listId
    self.totalItems = totalItems
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case activity
    case listId = "list_id"
    case totalItems = "total_items"
  }
}
