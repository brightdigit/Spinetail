import Foundation

import PrchModel
/** An object representing all segmentation options. This object should contain a `saved_segment_id` to use an existing segment, or you can create a new segment by including both `match` and `conditions` options. */
public struct SegmentOptions1Model: Codable, Equatable, Content {
  /** Segment match type. */
  public enum AutomationsAutomationsMatch: String, Codable, Equatable, CaseIterable {
    case any
    case all
  }

  /** Segment match conditions. There are multiple possible types, see the [condition types documentation](https://mailchimp.com/developer/marketing/docs/alternative-schemas/#segment-condition-schemas). */
  public var conditions: [[String: String]]?

  /** Segment match type. */
  public var match: Match?

  /** The prebuilt segment id, if a prebuilt segment has been designated for this campaign. */
  public var prebuiltSegmentId: String?

  /** The id for an existing saved segment. */
  public var savedSegmentId: Int?

  public init(conditions: [[String: String]]? = nil, match: Match? = nil, prebuiltSegmentId: String? = nil, savedSegmentId: Int? = nil) {
    self.conditions = conditions
    self.match = match
    self.prebuiltSegmentId = prebuiltSegmentId
    self.savedSegmentId = savedSegmentId
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case conditions
    case match
    case prebuiltSegmentId = "prebuilt_segment_id"
    case savedSegmentId = "saved_segment_id"
  }
}
