import Foundation

/** A specific note for a specific member. */

public struct MemberNotes: Codable {
  /** The content of the note. Note length is limited to 1,000 characters. */
  public var note: String?

  public init(note: String? = nil) {
    self.note = note
  }
}
