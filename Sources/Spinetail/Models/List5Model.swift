import Foundation

import PrchModel
/** List settings for the campaign. */
public struct List5Model: Codable, Equatable, Content {
  /** The unique list id. */
  public var listId: String

  public var segmentOpts: SegmentOptions1Model?

  public init(listId: String, segmentOpts: SegmentOptions1Model? = nil) {
    self.listId = listId
    self.segmentOpts = segmentOpts
  }

  public enum CodingKeys: String, CodingKey {
    case listId = "list_id"
    case segmentOpts = "segment_opts"
  }
}
