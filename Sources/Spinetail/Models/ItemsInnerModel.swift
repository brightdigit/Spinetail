import Foundation

import PrchModel
public struct ItemsInnerModel: Codable, Equatable, Content {
  /** The item type. */
  public enum Automations`Type`: String, Codable, Equatable, CaseIterable {
    case success
    case warning
    case error
  }

  /** Details about the specific feedback item. */
  public var details: String?

  /** The heading for the specific item. */
  public var heading: String?

  /** The ID for the specific item. */
  public var id: Int?

  /** The item type. */
  public var type: `Type`?

  public init(details: String? = nil, heading: String? = nil, id: Int? = nil, type: Type? = nil) {
    self.details = details
    self.heading = heading
    self.id = id
    self.type = type
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case details
    case heading
    case id
    case type
  }
}
