import Foundation

import PrchModel
/** A new event for a specific list member */
public struct EventsModel: Codable, Equatable, Content {
  /** The name for this type of event ('purchased', 'visited', etc). Must be 2-30 characters in length */
  public var name: String

  /** Events created with the is_syncing value set to `true` will not trigger automations. */
  public var isSyncing: Bool?

  /** The date and time the event occurred in ISO 8601 format. */
  public var occurredAt: DateTime?

  /** An optional list of properties */
  public var properties: [String: String]?

  public init(name: String, isSyncing: Bool? = nil, occurredAt: DateTime? = nil, properties: [String: String]? = nil) {
    self.name = name
    self.isSyncing = isSyncing
    self.occurredAt = occurredAt
    self.properties = properties
  }

  public enum CodingKeys: String, CodingKey {
    case name
    case isSyncing = "is_syncing"
    case occurredAt = "occurred_at"
    case properties
  }
}
