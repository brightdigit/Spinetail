import Foundation

/** A list of tags assigned to a list member. */

public struct CollectionOfTags: Codable {
  /** A list of tags assigned to the list member. */
  public var tags: [CollectionOfTagsTags]?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(tags: [CollectionOfTagsTags]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.tags = tags
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case tags
    case totalItems = "total_items"
    case links = "_links"
  }
}
