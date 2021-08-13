import Foundation

/** Interest categories organize interests, which are used to group subscribers based on their preferences. These correspond to Group Titles the application. */

public struct InterestCategory1: Codable {
  public enum ModelType: String, Codable {
    case checkboxes
    case dropdown
    case radio
    case hidden
  }

  /** The unique list id for the category. */
  public var listId: String?
  /** The id for the interest category. */
  public var _id: String?
  /** The text description of this category. This field appears on signup forms and is often phrased as a question. */
  public var title: String?
  /** The order that the categories are displayed in the list. Lower numbers display first. */
  public var displayOrder: Int?
  /** Determines how this category’s interests appear on signup forms. */
  public var type: ModelType?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(listId: String? = nil, _id: String? = nil, title: String? = nil, displayOrder: Int? = nil, type: ModelType? = nil, links: [ResourceLink]? = nil) {
    self.listId = listId
    self._id = _id
    self.title = title
    self.displayOrder = displayOrder
    self.type = type
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case listId = "list_id"
    case _id = "id"
    case title
    case displayOrder = "display_order"
    case type
    case links = "_links"
  }
}
