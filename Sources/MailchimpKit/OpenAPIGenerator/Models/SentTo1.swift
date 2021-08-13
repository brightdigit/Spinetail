import Foundation

/** A subscriber&#x27;s status for a specific campaign. */

public struct SentTo1: Codable {
  /** The MD5 hash of the lowercase version of the list member&#x27;s email address. */
  public var emailId: String?
  /** Email address for a subscriber. */
  public var emailAddress: String?
  /** A dictionary of merge fields ([audience fields](https://mailchimp.com/help/getting-started-with-merge-tags/)) where the keys are the merge tags. For example, {\&quot;FNAME\&quot;:\&quot;Freddie\&quot;} */
  public var mergeFields: [String: String]?
  /** [VIP status](https://mailchimp.com/help/designate-and-send-to-vip-contacts/) for subscriber. */
  public var vip: Bool?
  /** The status of the member (&#x27;sent&#x27;, &#x27;hard&#x27; for hard bounce, or &#x27;soft&#x27; for soft bounce). */
  public var status: String?
  /** The number of times a campaign was opened by this member. */
  public var openCount: Int?
  /** The date and time of the last open for this member in ISO 8601 format. */
  public var lastOpen: Date?
  /** For A/B Split Campaigns, the group the member was apart of (&#x27;a&#x27;, &#x27;b&#x27;, or &#x27;winner&#x27;). */
  public var absplitGroup: String?
  /** For campaigns sent with timewarp, the time zone group the member is apart of. */
  public var gmtOffset: Int?
  /** The campaign id. */
  public var campaignId: String?
  /** The unique list id. */
  public var listId: String?
  /** The status of the list used, namely if it&#x27;s deleted or disabled. */
  public var listIsActive: Bool?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(emailId: String? = nil, emailAddress: String? = nil, mergeFields: [String: String]? = nil, vip: Bool? = nil, status: String? = nil, openCount: Int? = nil, lastOpen: Date? = nil, absplitGroup: String? = nil, gmtOffset: Int? = nil, campaignId: String? = nil, listId: String? = nil, listIsActive: Bool? = nil, links: [ResourceLink]? = nil) {
    self.emailId = emailId
    self.emailAddress = emailAddress
    self.mergeFields = mergeFields
    self.vip = vip
    self.status = status
    self.openCount = openCount
    self.lastOpen = lastOpen
    self.absplitGroup = absplitGroup
    self.gmtOffset = gmtOffset
    self.campaignId = campaignId
    self.listId = listId
    self.listIsActive = listIsActive
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case emailId = "email_id"
    case emailAddress = "email_address"
    case mergeFields = "merge_fields"
    case vip
    case status
    case openCount = "open_count"
    case lastOpen = "last_open"
    case absplitGroup = "absplit_group"
    case gmtOffset = "gmt_offset"
    case campaignId = "campaign_id"
    case listId = "list_id"
    case listIsActive = "list_is_active"
    case links = "_links"
  }
}
