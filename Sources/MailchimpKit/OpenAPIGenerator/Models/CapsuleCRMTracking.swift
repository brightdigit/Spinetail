import Foundation

/** Deprecated */

public struct CapsuleCRMTracking: Codable {
  /** Update contact notes for a campaign based on subscriber email addresses. */
  public var notes: Bool?

  public init(notes: Bool? = nil) {
    self.notes = notes
  }
}
