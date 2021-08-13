import Foundation

/** A summary of the interaction with the campaign. */

public struct MemberActivity1: Codable {
  /** The date and time recorded for the action in ISO 8601 format. */
  public var timestamp: Date?

  public init(timestamp: Date? = nil) {
    self.timestamp = timestamp
  }
}
