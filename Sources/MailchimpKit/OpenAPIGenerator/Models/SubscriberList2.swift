import Foundation

/** Information about a specific list. */

public struct SubscriberList2: Codable {
  /** The name of the list. */
  public var name: String
  public var contact: ListContact1
  /** The [permission reminder](https://mailchimp.com/help/edit-the-permission-reminder/) for the list. */
  public var permissionReminder: String
  /** Whether campaigns for this list use the [Archive Bar](https://mailchimp.com/help/about-email-campaign-archives-and-pages/) in archives by default. */
  public var useArchiveBar: Bool?
  public var campaignDefaults: CampaignDefaults
  /** The email address to send [subscribe notifications](https://mailchimp.com/help/change-subscribe-and-unsubscribe-notifications/) to. */
  public var notifyOnSubscribe: String?
  /** The email address to send [unsubscribe notifications](https://mailchimp.com/help/change-subscribe-and-unsubscribe-notifications/) to. */
  public var notifyOnUnsubscribe: String?
  /** Whether the list supports [multiple formats for emails](https://mailchimp.com/help/change-audience-name-defaults/). When set to &#x60;true&#x60;, subscribers can choose whether they want to receive HTML or plain-text emails. When set to &#x60;false&#x60;, subscribers will receive HTML emails, with a plain-text alternative backup. */
  public var emailTypeOption: Bool
  /** Whether or not to require the subscriber to confirm subscription via email. */
  public var doubleOptin: Bool?
  /** Whether or not the list has marketing permissions (eg. GDPR) enabled. */
  public var marketingPermissions: Bool?

  public init(name: String, contact: ListContact1, permissionReminder: String, useArchiveBar: Bool? = nil, campaignDefaults: CampaignDefaults, notifyOnSubscribe: String? = nil, notifyOnUnsubscribe: String? = nil, emailTypeOption: Bool, doubleOptin: Bool? = nil, marketingPermissions: Bool? = nil) {
    self.name = name
    self.contact = contact
    self.permissionReminder = permissionReminder
    self.useArchiveBar = useArchiveBar
    self.campaignDefaults = campaignDefaults
    self.notifyOnSubscribe = notifyOnSubscribe
    self.notifyOnUnsubscribe = notifyOnUnsubscribe
    self.emailTypeOption = emailTypeOption
    self.doubleOptin = doubleOptin
    self.marketingPermissions = marketingPermissions
  }

  public enum CodingKeys: String, CodingKey {
    case name
    case contact
    case permissionReminder = "permission_reminder"
    case useArchiveBar = "use_archive_bar"
    case campaignDefaults = "campaign_defaults"
    case notifyOnSubscribe = "notify_on_subscribe"
    case notifyOnUnsubscribe = "notify_on_unsubscribe"
    case emailTypeOption = "email_type_option"
    case doubleOptin = "double_optin"
    case marketingPermissions = "marketing_permissions"
  }
}
