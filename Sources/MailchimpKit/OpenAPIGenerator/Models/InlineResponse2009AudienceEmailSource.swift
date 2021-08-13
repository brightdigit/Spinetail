import Foundation

public struct InlineResponse2009AudienceEmailSource: Codable {
  /** Email source name */
  public var name: String?
  /** Type of the email source */
  public var type: String?
  /** Is the source reference a segment */
  public var isSegment: Bool?
  /** Segment type if this source is tied to a segment */
  public var segmentType: String?
  /** Associated list name to the source */
  public var listName: String?

  public init(name: String? = nil, type: String? = nil, isSegment: Bool? = nil, segmentType: String? = nil, listName: String? = nil) {
    self.name = name
    self.type = type
    self.isSegment = isSegment
    self.segmentType = segmentType
    self.listName = listName
  }

  public enum CodingKeys: String, CodingKey {
    case name
    case type
    case isSegment = "is_segment"
    case segmentType = "segment_type"
    case listName = "list_name"
  }
}
