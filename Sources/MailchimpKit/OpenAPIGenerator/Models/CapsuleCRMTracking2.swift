import Foundation

/** Deprecated */

public struct CapsuleCRMTracking2: Codable {
  /** Update contact notes for a campaign based on a subscriber&#x27;s email address. */
  public var notes: Bool?

  public init(notes: Bool? = nil) {
    self.notes = notes
  }
}
