import Foundation

/** List settings for the campaign. */

public struct List1: Codable {
  /** The unique list id. */
  public var listId: String
  public var segmentOpts: SegmentOptions?

  public init(listId: String, segmentOpts: SegmentOptions? = nil) {
    self.listId = listId
    self.segmentOpts = segmentOpts
  }

  public enum CodingKeys: String, CodingKey {
    case listId = "list_id"
    case segmentOpts = "segment_opts"
  }
}
