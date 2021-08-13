import Foundation

/** Information about a specific list segment. */

public struct List5: Codable {
  /** The name of the segment. */
  public var name: String
  /** An array of emails to be used for a static segment. Any emails provided that are not present on the list will be ignored. Passing an empty array for an existing static segment will reset that segment and remove all members. This field cannot be provided with the &#x60;options&#x60; field. */
  public var staticSegment: [String]?
  public var options: Conditions1?

  public init(name: String, staticSegment: [String]? = nil, options: Conditions1? = nil) {
    self.name = name
    self.staticSegment = staticSegment
    self.options = options
  }

  public enum CodingKeys: String, CodingKey {
    case name
    case staticSegment = "static_segment"
    case options
  }
}
