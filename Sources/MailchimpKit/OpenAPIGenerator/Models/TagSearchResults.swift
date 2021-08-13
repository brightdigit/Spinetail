import Foundation

/** A list of tags matching the input query. */

public struct TagSearchResults: Codable {
  /** A list of matching tags. */
  public var tags: [TagSearchResultsTags]?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(tags: [TagSearchResultsTags]? = nil, totalItems: Int? = nil) {
    self.tags = tags
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case tags
    case totalItems = "total_items"
  }
}
