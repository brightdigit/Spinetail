import Foundation

/** Details of abuse complaints for a specific list. An abuse complaint occurs when your recipient clicks to &#x27;report spam&#x27; in their email program. */

public struct AbuseComplaint2: Codable {
  /** The id for the abuse report */
  public var _id: Int?
  /** The campaign id for the abuse report */
  public var campaignId: String?
  /** The unique id of the list for the abuse report. */
  public var listId: String?
  /** The status of the list used, namely if it&#x27;s deleted or disabled. */
  public var listIsActive: Bool?
  /** The MD5 hash of the lowercase version of the list member&#x27;s email address. */
  public var emailId: String?
  /** Email address for a subscriber. */
  public var emailAddress: String?
  /** A dictionary of merge fields ([audience fields](https://mailchimp.com/help/getting-started-with-merge-tags/)) where the keys are the merge tags. For example, {\&quot;FNAME\&quot;:\&quot;Freddie\&quot;} */
  public var mergeFields: [String: String]?
  /** [VIP status](https://mailchimp.com/help/designate-and-send-to-vip-contacts/) for subscriber. */
  public var vip: Bool?
  /** Date for the abuse report */
  public var date: Date?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(_id: Int? = nil, campaignId: String? = nil, listId: String? = nil, listIsActive: Bool? = nil, emailId: String? = nil, emailAddress: String? = nil, mergeFields: [String: String]? = nil, vip: Bool? = nil, date: Date? = nil, links: [ResourceLink]? = nil) {
    self._id = _id
    self.campaignId = campaignId
    self.listId = listId
    self.listIsActive = listIsActive
    self.emailId = emailId
    self.emailAddress = emailAddress
    self.mergeFields = mergeFields
    self.vip = vip
    self.date = date
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case campaignId = "campaign_id"
    case listId = "list_id"
    case listIsActive = "list_is_active"
    case emailId = "email_id"
    case emailAddress = "email_address"
    case mergeFields = "merge_fields"
    case vip
    case date
    case links = "_links"
  }
}
