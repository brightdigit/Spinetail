import Foundation

import PrchModel
/** The outreach associated with this order. For example, an email campaign or Facebook ad. */
public struct Outreach1Model: Codable, Equatable, Content {
  /** A unique identifier for the outreach. Can be an email campaign ID. */
  public var id: String?

  public init(id: String? = nil) {
    self.id = id
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case id
  }
}
