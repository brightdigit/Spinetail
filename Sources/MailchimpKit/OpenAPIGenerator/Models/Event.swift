import Foundation

/** A specific event for a contact. */

public struct Event: Codable {
  /** The date and time the event occurred in ISO 8601 format. */
  public var occurredAt: Date?
  /** The name for this type of event (&#x27;purchased&#x27;, &#x27;visited&#x27;, etc). Must be 2-30 characters in length */
  public var name: String?
  /** An optional list of properties */
  public var properties: [String: String]?

  public init(occurredAt: Date? = nil, name: String? = nil, properties: [String: String]? = nil) {
    self.occurredAt = occurredAt
    self.name = name
    self.properties = properties
  }

  public enum CodingKeys: String, CodingKey {
    case occurredAt = "occurred_at"
    case name
    case properties
  }
}
