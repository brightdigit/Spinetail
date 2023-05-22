import Foundation

import PrchModel
/** A subscriber who clicked a specific URL in a specific campaign. */
public struct ClickDetailMemberModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** The campaign id. */
  public var campaignId: String?

  /** The total number of times the subscriber clicked on the link. */
  public var clicks: Int?

  /** The status of the member, namely if they are subscribed, unsubscribed, deleted, non-subscribed, transactional, pending, or need reconfirmation. */
  public var contactStatus: String?

  /** Email address for a subscriber. */
  public var emailAddress: String?

  /** The MD5 hash of the lowercase version of the list member's email address. */
  public var emailId: String?

  /** The list id. */
  public var listId: String?

  /** The status of the list used, namely if it's deleted or disabled. */
  public var listIsActive: Bool?

  /** A dictionary of merge fields where the keys are the merge tags. See the [Merge Fields documentation](https://mailchimp.com/developer/marketing/docs/merge-fields/#structure) for more about the structure. */
  public var mergeFields: [String: String]?

  /** The id for the tracked URL in the campaign. */
  public var uRLId: String?

  /** [VIP status](https://mailchimp.com/help/designate-and-send-to-vip-contacts/) for subscriber. */
  public var vip: Bool?

  public init(links: [ResourceLinkModel]? = nil, campaignId: String? = nil, clicks: Int? = nil, contactStatus: String? = nil, emailAddress: String? = nil, emailId: String? = nil, listId: String? = nil, listIsActive: Bool? = nil, mergeFields: [String: String]? = nil, uRLId: String? = nil, vip: Bool? = nil) {
    self.links = links
    self.campaignId = campaignId
    self.clicks = clicks
    self.contactStatus = contactStatus
    self.emailAddress = emailAddress
    self.emailId = emailId
    self.listId = listId
    self.listIsActive = listIsActive
    self.mergeFields = mergeFields
    self.uRLId = uRLId
    self.vip = vip
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case campaignId = "campaign_id"
    case clicks
    case contactStatus = "contact_status"
    case emailAddress = "email_address"
    case emailId = "email_id"
    case listId = "list_id"
    case listIsActive = "list_is_active"
    case mergeFields = "merge_fields"
    case uRLId = "url_id"
    case vip
  }
}
