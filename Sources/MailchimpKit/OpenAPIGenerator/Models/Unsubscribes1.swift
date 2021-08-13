import Foundation

/** A member who unsubscribed from a specific campaign. */

public struct Unsubscribes1: Codable {
  /** The MD5 hash of the lowercase version of the list member&#x27;s email address. */
  public var emailId: String?
  /** Email address for a subscriber. */
  public var emailAddress: String?
  /** A dictionary of merge fields ([audience fields](https://mailchimp.com/help/getting-started-with-merge-tags/)) where the keys are the merge tags. For example, {\&quot;FNAME\&quot;:\&quot;Freddie\&quot;} */
  public var mergeFields: [String: String]?
  /** [VIP status](https://mailchimp.com/help/designate-and-send-to-vip-contacts/) for subscriber. */
  public var vip: Bool?
  /** The date and time the member opted-out in ISO 8601 format. */
  public var timestamp: Date?
  /** If available, the reason listed by the member for unsubscribing. */
  public var reason: String?
  /** The campaign id. */
  public var campaignId: String?
  /** The list id. */
  public var listId: String?
  /** The status of the list used, namely if it&#x27;s deleted or disabled. */
  public var listIsActive: Bool?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(emailId: String? = nil, emailAddress: String? = nil, mergeFields: [String: String]? = nil, vip: Bool? = nil, timestamp: Date? = nil, reason: String? = nil, campaignId: String? = nil, listId: String? = nil, listIsActive: Bool? = nil, links: [ResourceLink]? = nil) {
    self.emailId = emailId
    self.emailAddress = emailAddress
    self.mergeFields = mergeFields
    self.vip = vip
    self.timestamp = timestamp
    self.reason = reason
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
    case timestamp
    case reason
    case campaignId = "campaign_id"
    case listId = "list_id"
    case listIsActive = "list_is_active"
    case links = "_links"
  }
}
