import Foundation

/** List settings for the campaign. */

public struct List2: Codable {
  /** The unique list id. */
  public var listId: String
  public var segmentOpts: SegmentOptions1?

  public init(listId: String, segmentOpts: SegmentOptions1? = nil) {
    self.listId = listId
    self.segmentOpts = segmentOpts
  }

  public enum CodingKeys: String, CodingKey {
    case listId = "list_id"
    case segmentOpts = "segment_opts"
  }
}
