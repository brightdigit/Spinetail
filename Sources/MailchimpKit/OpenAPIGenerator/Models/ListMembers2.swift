import Foundation

/** Individuals who are currently or have been previously subscribed to this list, including members who have bounced or unsubscribed. */

public struct ListMembers2: Codable {
  public enum Status: String, Codable {
    case subscribed
    case unsubscribed
    case cleaned
    case pending
    case transactional
    case archived
  }

  /** The MD5 hash of the lowercase version of the list member&#x27;s email address. */
  public var _id: String?
  /** Email address for a subscriber. */
  public var emailAddress: String?
  /** An identifier for the address across all of Mailchimp. */
  public var uniqueEmailId: String?
  /** The contact&#x27;s full name. */
  public var fullName: String?
  /** The ID used in the Mailchimp web application. View this member in your Mailchimp account at &#x60;https://{dc}.admin.mailchimp.com/lists/members/view?id&#x3D;{web_id}&#x60;. */
  public var webId: Int?
  /** Type of email this member asked to get (&#x27;html&#x27; or &#x27;text&#x27;). */
  public var emailType: String?
  /** Subscriber&#x27;s current status. */
  public var status: Status?
  /** A subscriber&#x27;s reason for unsubscribing. */
  public var unsubscribeReason: String?
  /** A dictionary of merge fields ([audience fields](https://mailchimp.com/help/getting-started-with-merge-tags/)) where the keys are the merge tags. For example, {\&quot;FNAME\&quot;:\&quot;Freddie\&quot;} */
  public var mergeFields: [String: String]?
  /** The key of this object&#x27;s properties is the ID of the interest in question. */
  public var interests: [String: Bool]?
  public var stats: SubscriberStats1?
  /** IP address the subscriber signed up from. */
  public var ipSignup: String?
  /** The date and time the subscriber signed up for the list in ISO 8601 format. */
  public var timestampSignup: Date?
  /** The IP address the subscriber used to confirm their opt-in status. */
  public var ipOpt: String?
  /** The date and time the subscribe confirmed their opt-in status in ISO 8601 format. */
  public var timestampOpt: Date?
  /** Star rating for this member, between 1 and 5. */
  public var memberRating: Int?
  /** The date and time the member&#x27;s info was last changed in ISO 8601 format. */
  public var lastChanged: Date?
  /** If set/detected, the [subscriber&#x27;s language](https://mailchimp.com/help/view-and-edit-contact-languages/). */
  public var language: String?
  /** [VIP status](https://mailchimp.com/help/designate-and-send-to-vip-contacts/) for subscriber. */
  public var vip: Bool?
  /** The list member&#x27;s email client. */
  public var emailClient: String?
  public var location: Location1?
  /** The marketing permissions for the subscriber. */
  public var marketingPermissions: [MarketingPermission1]?
  public var lastNote: Notes?
  /** The source from which the subscriber was added to this list. */
  public var source: String?
  /** The number of tags applied to this member. */
  public var tagsCount: Int?
  /** Returns up to 50 tags applied to this member. To retrieve all tags see [Member Tags](https://mailchimp.com/developer/marketing/api/list-member-tags/). */
  public var tags: [ListMembers1Tags]?
  /** The list id. */
  public var listId: String?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(_id: String? = nil, emailAddress: String? = nil, uniqueEmailId: String? = nil, fullName: String? = nil, webId: Int? = nil, emailType: String? = nil, status: Status? = nil, unsubscribeReason: String? = nil, mergeFields: [String: String]? = nil, interests: [String: Bool]? = nil, stats: SubscriberStats1? = nil, ipSignup: String? = nil, timestampSignup: Date? = nil, ipOpt: String? = nil, timestampOpt: Date? = nil, memberRating: Int? = nil, lastChanged: Date? = nil, language: String? = nil, vip: Bool? = nil, emailClient: String? = nil, location: Location1? = nil, marketingPermissions: [MarketingPermission1]? = nil, lastNote: Notes? = nil, source: String? = nil, tagsCount: Int? = nil, tags: [ListMembers1Tags]? = nil, listId: String? = nil, links: [ResourceLink]? = nil) {
    self._id = _id
    self.emailAddress = emailAddress
    self.uniqueEmailId = uniqueEmailId
    self.fullName = fullName
    self.webId = webId
    self.emailType = emailType
    self.status = status
    self.unsubscribeReason = unsubscribeReason
    self.mergeFields = mergeFields
    self.interests = interests
    self.stats = stats
    self.ipSignup = ipSignup
    self.timestampSignup = timestampSignup
    self.ipOpt = ipOpt
    self.timestampOpt = timestampOpt
    self.memberRating = memberRating
    self.lastChanged = lastChanged
    self.language = language
    self.vip = vip
    self.emailClient = emailClient
    self.location = location
    self.marketingPermissions = marketingPermissions
    self.lastNote = lastNote
    self.source = source
    self.tagsCount = tagsCount
    self.tags = tags
    self.listId = listId
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case emailAddress = "email_address"
    case uniqueEmailId = "unique_email_id"
    case fullName = "full_name"
    case webId = "web_id"
    case emailType = "email_type"
    case status
    case unsubscribeReason = "unsubscribe_reason"
    case mergeFields = "merge_fields"
    case interests
    case stats
    case ipSignup = "ip_signup"
    case timestampSignup = "timestamp_signup"
    case ipOpt = "ip_opt"
    case timestampOpt = "timestamp_opt"
    case memberRating = "member_rating"
    case lastChanged = "last_changed"
    case language
    case vip
    case emailClient = "email_client"
    case location
    case marketingPermissions = "marketing_permissions"
    case lastNote = "last_note"
    case source
    case tagsCount = "tags_count"
    case tags
    case listId = "list_id"
    case links = "_links"
  }
}
