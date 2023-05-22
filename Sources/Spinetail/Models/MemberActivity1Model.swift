import Foundation

import PrchModel
/** A summary of the interaction with the campaign. */
public struct MemberActivity1Model: Codable, Equatable, Content {
  /** The date and time recorded for the action in ISO 8601 format. */
  public var timestamp: DateTime?

  public init(timestamp: DateTime? = nil) {
    self.timestamp = timestamp
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case timestamp
  }
}
