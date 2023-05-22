import Foundation

import PrchModel
/** List settings for the campaign. */
public struct List4Model: Codable, Equatable, Content {
  /** The unique list id. */
  public var listId: String

  public var segmentOpts: SegmentOptions2Model?

  public init(listId: String, segmentOpts: SegmentOptions2Model? = nil) {
    self.listId = listId
    self.segmentOpts = segmentOpts
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case listId = "list_id"
    case segmentOpts = "segment_opts"
  }
}
