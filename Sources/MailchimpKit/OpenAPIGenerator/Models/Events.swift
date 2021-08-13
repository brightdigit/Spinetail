import Foundation

/** A new event for a specific list member */

public struct Events: Codable {
  /** The name for this type of event (&#x27;purchased&#x27;, &#x27;visited&#x27;, etc). Must be 2-30 characters in length */
  public var name: String
  /** An optional list of properties */
  public var properties: [String: String]?
  /** Events created with the is_syncing value set to &#x60;true&#x60; will not trigger automations. */
  public var isSyncing: Bool?
  /** The date and time the event occurred in ISO 8601 format. */
  public var occurredAt: Date?

  public init(name: String, properties: [String: String]? = nil, isSyncing: Bool? = nil, occurredAt: Date? = nil) {
    self.name = name
    self.properties = properties
    self.isSyncing = isSyncing
    self.occurredAt = occurredAt
  }

  public enum CodingKeys: String, CodingKey {
    case name
    case properties
    case isSyncing = "is_syncing"
    case occurredAt = "occurred_at"
  }
}
