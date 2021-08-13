import Foundation

/** Interest categories organize interests, which are used to group subscribers based on their preferences. These correspond to Group Titles the application. */

public struct InterestCategory2: Codable {
  public enum ModelType: String, Codable {
    case checkboxes
    case dropdown
    case radio
    case hidden
  }

  /** The text description of this category. This field appears on signup forms and is often phrased as a question. */
  public var title: String
  /** The order that the categories are displayed in the list. Lower numbers display first. */
  public var displayOrder: Int?
  /** Determines how this category’s interests appear on signup forms. */
  public var type: ModelType

  public init(title: String, displayOrder: Int? = nil, type: ModelType) {
    self.title = title
    self.displayOrder = displayOrder
    self.type = type
  }

  public enum CodingKeys: String, CodingKey {
    case title
    case displayOrder = "display_order"
    case type
  }
}
