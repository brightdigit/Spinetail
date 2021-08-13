import Foundation

/** A subscriber who clicked a specific URL in a specific campaign. */

public struct ClickDetailMember: Codable {
  /** The MD5 hash of the lowercase version of the list member&#x27;s email address. */
  public var emailId: String?
  /** Email address for a subscriber. */
  public var emailAddress: String?
  /** A dictionary of merge fields ([audience fields](https://mailchimp.com/help/getting-started-with-merge-tags/)) where the keys are the merge tags. For example, {\&quot;FNAME\&quot;:\&quot;Freddie\&quot;} */
  public var mergeFields: [String: String]?
  /** [VIP status](https://mailchimp.com/help/designate-and-send-to-vip-contacts/) for subscriber. */
  public var vip: Bool?
  /** The total number of times the subscriber clicked on the link. */
  public var clicks: Int?
  /** The campaign id. */
  public var campaignId: String?
  /** The id for the tracked URL in the campaign. */
  public var urlId: String?
  /** The list id. */
  public var listId: String?
  /** The status of the list used, namely if it&#x27;s deleted or disabled. */
  public var listIsActive: Bool?
  /** The status of the member, namely if they are subscribed, unsubscribed, deleted, non-subscribed, transactional, pending, or need reconfirmation. */
  public var contactStatus: String?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(emailId: String? = nil, emailAddress: String? = nil, mergeFields: [String: String]? = nil, vip: Bool? = nil, clicks: Int? = nil, campaignId: String? = nil, urlId: String? = nil, listId: String? = nil, listIsActive: Bool? = nil, contactStatus: String? = nil, links: [ResourceLink]? = nil) {
    self.emailId = emailId
    self.emailAddress = emailAddress
    self.mergeFields = mergeFields
    self.vip = vip
    self.clicks = clicks
    self.campaignId = campaignId
    self.urlId = urlId
    self.listId = listId
    self.listIsActive = listIsActive
    self.contactStatus = contactStatus
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case emailId = "email_id"
    case emailAddress = "email_address"
    case mergeFields = "merge_fields"
    case vip
    case clicks
    case campaignId = "campaign_id"
    case urlId = "url_id"
    case listId = "list_id"
    case listIsActive = "list_is_active"
    case contactStatus = "contact_status"
    case links = "_links"
  }
}
