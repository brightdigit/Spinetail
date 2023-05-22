import Foundation

import PrchModel
/** List settings for the campaign. */
public struct List2Model: Codable, Equatable, Content {
  /** The unique list id. */
  public var listId: String?

  /** The status of the list used, namely if it's deleted or disabled. */
  public var listIsActive: Bool?

  /** The name of the list. */
  public var listName: String?

  /** Count of the recipients on the associated list. Formatted as an integer. */
  public var recipientCount: Int?

  public var segmentOpts: SegmentOptions1Model?

  /** A description of the [segment](https://mailchimp.com/help/getting-started-with-groups/) used for the campaign. Formatted as a string marked up with HTML. */
  public var segmentText: String?

  public init(listId: String? = nil, listIsActive: Bool? = nil, listName: String? = nil, recipientCount: Int? = nil, segmentOpts: SegmentOptions1Model? = nil, segmentText: String? = nil) {
    self.listId = listId
    self.listIsActive = listIsActive
    self.listName = listName
    self.recipientCount = recipientCount
    self.segmentOpts = segmentOpts
    self.segmentText = segmentText
  }

  public enum CodingKeys: String, CodingKey {
    case listId = "list_id"
    case listIsActive = "list_is_active"
    case listName = "list_name"
    case recipientCount = "recipient_count"
    case segmentOpts = "segment_opts"
    case segmentText = "segment_text"
  }
}
