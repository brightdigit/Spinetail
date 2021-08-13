import Foundation

/** List settings for the campaign. */

public struct List11: Codable {
  /** The unique list id. */
  public var listId: String?
  /** The status of the list used, namely if it&#x27;s deleted or disabled. */
  public var listIsActive: Bool?
  /** The name of the list. */
  public var listName: String?
  /** A description of the [segment](https://mailchimp.com/help/getting-started-with-groups/) used for the campaign. Formatted as a string marked up with HTML. */
  public var segmentText: String?
  /** Count of the recipients on the associated list. Formatted as an integer. */
  public var recipientCount: Int?
  public var segmentOpts: SegmentOptions1?

  public init(listId: String? = nil, listIsActive: Bool? = nil, listName: String? = nil, segmentText: String? = nil, recipientCount: Int? = nil, segmentOpts: SegmentOptions1? = nil) {
    self.listId = listId
    self.listIsActive = listIsActive
    self.listName = listName
    self.segmentText = segmentText
    self.recipientCount = recipientCount
    self.segmentOpts = segmentOpts
  }

  public enum CodingKeys: String, CodingKey {
    case listId = "list_id"
    case listIsActive = "list_is_active"
    case listName = "list_name"
    case segmentText = "segment_text"
    case recipientCount = "recipient_count"
    case segmentOpts = "segment_opts"
  }
}
