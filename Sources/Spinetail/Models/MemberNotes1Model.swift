import Foundation

import PrchModel
/** A specific note for a specific member. */
public struct MemberNotes1Model: Codable, Equatable, Content {
  /** The content of the note. Note length is limited to 1,000 characters. */
  public var note: String?

  public init(note: String? = nil) {
    self.note = note
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case note
  }
}
