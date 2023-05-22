import Foundation

import PrchModel
/** Information about a specific list segment. */
public struct List9Model: Codable, Equatable, Content {
  /** The name of the segment. */
  public var name: String

  public var options: Conditions2Model?

  /** An array of emails to be used for a static segment. Any emails provided that are not present on the list will be ignored. Passing an empty array for an existing static segment will reset that segment and remove all members. This field cannot be provided with the `options` field. */
  public var staticSegment: [String]?

  public init(name: String, options: Conditions2Model? = nil, staticSegment: [String]? = nil) {
    self.name = name
    self.options = options
    self.staticSegment = staticSegment
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case name
    case options
    case staticSegment = "static_segment"
  }
}
