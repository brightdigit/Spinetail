import Foundation

import PrchModel
/** A list of this category's interests */
public struct InterestsModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** The id for the interest category. */
  public var categoryId: String?

  /** An array of this category's interests */
  public var interests: [InterestModel]?

  /** The unique list id that the interests belong to. */
  public var listId: String?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, categoryId: String? = nil, interests: [InterestModel]? = nil, listId: String? = nil, totalItems: Int? = nil) {
    self.links = links
    self.categoryId = categoryId
    self.interests = interests
    self.listId = listId
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case categoryId = "category_id"
    case interests
    case listId = "list_id"
    case totalItems = "total_items"
  }
}
