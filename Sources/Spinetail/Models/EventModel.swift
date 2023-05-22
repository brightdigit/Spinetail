import Foundation

import PrchModel
/** A specific event for a contact. */
public struct EventModel: Codable, Equatable, Content {
  /** The name for this type of event ('purchased', 'visited', etc). Must be 2-30 characters in length */
  public var name: String?

  /** The date and time the event occurred in ISO 8601 format. */
  public var occurredAt: DateTime?

  /** An optional list of properties */
  public var properties: [String: String]?

  public init(name: String? = nil, occurredAt: DateTime? = nil, properties: [String: String]? = nil) {
    self.name = name
    self.occurredAt = occurredAt
    self.properties = properties
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case name
    case occurredAt = "occurred_at"
    case properties
  }
}
