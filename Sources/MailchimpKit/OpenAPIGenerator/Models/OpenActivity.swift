import Foundation

/** A list of a member&#x27;s opens activity in a specific campaign. */

public struct OpenActivity: Codable {
  /** The unique id for the campaign. */
  public var campaignId: String?
  /** The unique id for the list. */
  public var listId: String?
  /** The status of the list used, namely if it&#x27;s deleted or disabled. */
  public var listIsActive: Bool?
  /** The status of the member, namely if they are subscribed, unsubscribed, deleted, non-subscribed, transactional, pending, or need reconfirmation. */
  public var contactStatus: String?
  /** The MD5 hash of the lowercase version of the list member&#x27;s email address. */
  public var emailId: String?
  /** Email address for a subscriber. */
  public var emailAddress: String?
  /** A dictionary of merge fields ([audience fields](https://mailchimp.com/help/getting-started-with-merge-tags/)) where the keys are the merge tags. For example, {\&quot;FNAME\&quot;:\&quot;Freddie\&quot;} */
  public var mergeFields: [String: String]?
  /** [VIP status](https://mailchimp.com/help/designate-and-send-to-vip-contacts/) for subscriber. */
  public var vip: Bool?
  /** The total number of times the this campaign was opened by the list member. */
  public var opensCount: Int?
  /** An array of timestamps for each time a list member opened the campaign. If a list member opens an email multiple times, this will return a separate timestamp for each open event. */
  public var opens: [MemberActivity1]?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(campaignId: String? = nil, listId: String? = nil, listIsActive: Bool? = nil, contactStatus: String? = nil, emailId: String? = nil, emailAddress: String? = nil, mergeFields: [String: String]? = nil, vip: Bool? = nil, opensCount: Int? = nil, opens: [MemberActivity1]? = nil, links: [ResourceLink]? = nil) {
    self.campaignId = campaignId
    self.listId = listId
    self.listIsActive = listIsActive
    self.contactStatus = contactStatus
    self.emailId = emailId
    self.emailAddress = emailAddress
    self.mergeFields = mergeFields
    self.vip = vip
    self.opensCount = opensCount
    self.opens = opens
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case campaignId = "campaign_id"
    case listId = "list_id"
    case listIsActive = "list_is_active"
    case contactStatus = "contact_status"
    case emailId = "email_id"
    case emailAddress = "email_address"
    case mergeFields = "merge_fields"
    case vip
    case opensCount = "opens_count"
    case opens
    case links = "_links"
  }
}
