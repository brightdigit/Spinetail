import Foundation

/** An object representing all segmentation options. This object should contain a &#x60;saved_segment_id&#x60; to use an existing segment, or you can create a new segment by including both &#x60;match&#x60; and &#x60;conditions&#x60; options. */

public struct SegmentOptions: Codable {
  public enum Match: String, Codable {
    case any
    case all
  }

  /** The id for an existing saved segment. */
  public var savedSegmentId: Int?
  /** Segment match type. */
  public var match: Match?
  /** Segment match conditions. There are multiple possible types, see the [condition types documentation](https://mailchimp.com/developer/marketing/docs/alternative-schemas/#segment-condition-schemas). */
  public var conditions: [ConditionFilter]?

  public init(savedSegmentId: Int? = nil, match: Match? = nil, conditions: [ConditionFilter]? = nil) {
    self.savedSegmentId = savedSegmentId
    self.match = match
    self.conditions = conditions
  }

  public enum CodingKeys: String, CodingKey {
    case savedSegmentId = "saved_segment_id"
    case match
    case conditions
  }
}
