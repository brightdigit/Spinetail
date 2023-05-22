import Foundation

import PrchModel
/** Information about this list's interest categories. */
public struct InterestGroupingsModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** This array contains individual interest categories. */
  public var categories: [InterestCategoryModel]?

  /** The ID for the list that this category belongs to. */
  public var listId: String?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, categories: [InterestCategoryModel]? = nil, listId: String? = nil, totalItems: Int? = nil) {
    self.links = links
    self.categories = categories
    self.listId = listId
    self.totalItems = totalItems
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case categories
    case listId = "list_id"
    case totalItems = "total_items"
  }
}
