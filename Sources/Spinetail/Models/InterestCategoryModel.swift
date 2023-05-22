import Foundation

import PrchModel
/** Interest categories organize interests, which are used to group subscribers based on their preferences. These correspond to Group Titles the application. */
public struct InterestCategoryModel: Codable, Equatable, Content {
  /** Determines how this category’s interests appear on signup forms. */
  public enum Automations`Type`: String, Codable, Equatable, CaseIterable {
    case checkboxes
    case dropdown
    case radio
    case hidden
  }

  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** The order that the categories are displayed in the list. Lower numbers display first. */
  public var displayOrder: Int?

  /** The id for the interest category. */
  public var id: String?

  /** The unique list id for the category. */
  public var listId: String?

  /** The text description of this category. This field appears on signup forms and is often phrased as a question. */
  public var title: String?

  /** Determines how this category’s interests appear on signup forms. */
  public var type: `Type`?

  public init(links: [ResourceLinkModel]? = nil, displayOrder: Int? = nil, id: String? = nil, listId: String? = nil, title: String? = nil, type: Type? = nil) {
    self.links = links
    self.displayOrder = displayOrder
    self.id = id
    self.listId = listId
    self.title = title
    self.type = type
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case displayOrder = "display_order"
    case id
    case listId = "list_id"
    case title
    case type
  }
}
