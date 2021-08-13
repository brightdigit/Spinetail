import Foundation

/** Information about a specific list segment. */

public struct List3: Codable {
  /** The name of the segment. */
  public var name: String
  /** An array of emails to be used for a static segment. Any emails provided that are not present on the list will be ignored. Passing an empty array will create a static segment without any subscribers. This field cannot be provided with the options field. */
  public var staticSegment: [String]?
  public var options: Conditions?

  public init(name: String, staticSegment: [String]? = nil, options: Conditions? = nil) {
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
