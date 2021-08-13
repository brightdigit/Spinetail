import Foundation

/** Information about a specific list. */

public struct SubscriberList3: Codable {
  public enum Visibility: String, Codable {
    case pub
    case prv
  }

  /** A string that uniquely identifies this list. */
  public var _id: String?
  /** The ID used in the Mailchimp web application. View this list in your Mailchimp account at &#x60;https://{dc}.admin.mailchimp.com/lists/members/?id&#x3D;{web_id}&#x60;. */
  public var webId: Int?
  /** The name of the list. */
  public var name: String?
  public var contact: ListContact2?
  /** The [permission reminder](https://mailchimp.com/help/edit-the-permission-reminder/) for the list. */
  public var permissionReminder: String?
  /** Whether campaigns for this list use the [Archive Bar](https://mailchimp.com/help/about-email-campaign-archives-and-pages/) in archives by default. */
  public var useArchiveBar: Bool?
  public var campaignDefaults: CampaignDefaults1?
  /** The email address to send [subscribe notifications](https://mailchimp.com/help/change-subscribe-and-unsubscribe-notifications/) to. */
  public var notifyOnSubscribe: String?
  /** The email address to send [unsubscribe notifications](https://mailchimp.com/help/change-subscribe-and-unsubscribe-notifications/) to. */
  public var notifyOnUnsubscribe: String?
  /** The date and time that this list was created in ISO 8601 format. */
  public var dateCreated: Date?
  /** An auto-generated activity score for the list (0-5). */
  public var listRating: Int?
  /** Whether the list supports [multiple formats for emails](https://mailchimp.com/help/change-audience-name-defaults/). When set to &#x60;true&#x60;, subscribers can choose whether they want to receive HTML or plain-text emails. When set to &#x60;false&#x60;, subscribers will receive HTML emails, with a plain-text alternative backup. */
  public var emailTypeOption: Bool?
  /** Our [url shortened](https://mailchimp.com/help/share-your-signup-form/) version of this list&#x27;s subscribe form. */
  public var subscribeUrlShort: String?
  /** The full version of this list&#x27;s subscribe form (host will vary). */
  public var subscribeUrlLong: String?
  /** The list&#x27;s [Email Beamer](https://mailchimp.com/help/use-email-beamer-to-create-a-campaign/) address. */
  public var beamerAddress: String?
  /** Legacy - visibility settings are no longer used */
  public var visibility: Visibility?
  /** Whether or not to require the subscriber to confirm subscription via email. */
  public var doubleOptin: Bool?
  /** Whether or not this list has a welcome automation connected. Welcome Automations: welcomeSeries, singleWelcome, emailFollowup. */
  public var hasWelcome: Bool?
  /** Whether or not the list has marketing permissions (eg. GDPR) enabled. */
  public var marketingPermissions: Bool?
  /** Any list-specific modules installed for this list. */
  public var modules: [String]?
  public var stats: Statistics?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(_id: String? = nil, webId: Int? = nil, name: String? = nil, contact: ListContact2? = nil, permissionReminder: String? = nil, useArchiveBar: Bool? = nil, campaignDefaults: CampaignDefaults1? = nil, notifyOnSubscribe: String? = nil, notifyOnUnsubscribe: String? = nil, dateCreated: Date? = nil, listRating: Int? = nil, emailTypeOption: Bool? = nil, subscribeUrlShort: String? = nil, subscribeUrlLong: String? = nil, beamerAddress: String? = nil, visibility: Visibility? = nil, doubleOptin: Bool? = nil, hasWelcome: Bool? = nil, marketingPermissions: Bool? = nil, modules: [String]? = nil, stats: Statistics? = nil, links: [ResourceLink]? = nil) {
    self._id = _id
    self.webId = webId
    self.name = name
    self.contact = contact
    self.permissionReminder = permissionReminder
    self.useArchiveBar = useArchiveBar
    self.campaignDefaults = campaignDefaults
    self.notifyOnSubscribe = notifyOnSubscribe
    self.notifyOnUnsubscribe = notifyOnUnsubscribe
    self.dateCreated = dateCreated
    self.listRating = listRating
    self.emailTypeOption = emailTypeOption
    self.subscribeUrlShort = subscribeUrlShort
    self.subscribeUrlLong = subscribeUrlLong
    self.beamerAddress = beamerAddress
    self.visibility = visibility
    self.doubleOptin = doubleOptin
    self.hasWelcome = hasWelcome
    self.marketingPermissions = marketingPermissions
    self.modules = modules
    self.stats = stats
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case webId = "web_id"
    case name
    case contact
    case permissionReminder = "permission_reminder"
    case useArchiveBar = "use_archive_bar"
    case campaignDefaults = "campaign_defaults"
    case notifyOnSubscribe = "notify_on_subscribe"
    case notifyOnUnsubscribe = "notify_on_unsubscribe"
    case dateCreated = "date_created"
    case listRating = "list_rating"
    case emailTypeOption = "email_type_option"
    case subscribeUrlShort = "subscribe_url_short"
    case subscribeUrlLong = "subscribe_url_long"
    case beamerAddress = "beamer_address"
    case visibility
    case doubleOptin = "double_optin"
    case hasWelcome = "has_welcome"
    case marketingPermissions = "marketing_permissions"
    case modules
    case stats
    case links = "_links"
  }
}
