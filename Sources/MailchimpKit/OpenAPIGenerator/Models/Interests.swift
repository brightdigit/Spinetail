import Foundation

/** A list of this category&#x27;s interests */

public struct Interests: Codable {
  /** An array of this category&#x27;s interests */
  public var interests: [Interest3]?
  /** The unique list id that the interests belong to. */
  public var listId: String?
  /** The id for the interest category. */
  public var categoryId: String?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(interests: [Interest3]? = nil, listId: String? = nil, categoryId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.interests = interests
    self.listId = listId
    self.categoryId = categoryId
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case interests
    case listId = "list_id"
    case categoryId = "category_id"
    case totalItems = "total_items"
    case links = "_links"
  }
}
