import Foundation

import PrchModel
/** A list of tags matching the input query. */
public struct TagSearchResultsModel: Codable, Equatable, Content {
  /** A list of matching tags. */
  public var tags: [TagsInner1Model]?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(tags: [TagsInner1Model]? = nil, totalItems: Int? = nil) {
    self.tags = tags
    self.totalItems = totalItems
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case tags
    case totalItems = "total_items"
  }
}
