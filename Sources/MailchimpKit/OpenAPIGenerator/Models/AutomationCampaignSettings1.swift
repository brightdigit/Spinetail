import Foundation

/** The settings for the Automation workflow. */

public struct AutomationCampaignSettings1: Codable {
  /** The title of the Automation. */
  public var title: String?
  /** The &#x27;from&#x27; name for the Automation (not an email address). */
  public var fromName: String?
  /** The reply-to email address for the Automation. */
  public var replyTo: String?
  /** Whether to use Mailchimp Conversation feature to manage replies */
  public var useConversation: Bool?
  /** The Automation&#x27;s custom &#x27;To&#x27; name, typically the first name [audience field](https://mailchimp.com/help/getting-started-with-merge-tags/). */
  public var toName: String?
  /** Whether Mailchimp [authenticated](https://mailchimp.com/help/about-email-authentication/) the Automation. Defaults to &#x60;true&#x60;. */
  public var authenticate: Bool?
  /** Whether to automatically append Mailchimp&#x27;s [default footer](https://mailchimp.com/help/about-campaign-footers/) to the Automation. */
  public var autoFooter: Bool?
  /** Whether to automatically inline the CSS included with the Automation content. */
  public var inlineCss: Bool?

  public init(title: String? = nil, fromName: String? = nil, replyTo: String? = nil, useConversation: Bool? = nil, toName: String? = nil, authenticate: Bool? = nil, autoFooter: Bool? = nil, inlineCss: Bool? = nil) {
    self.title = title
    self.fromName = fromName
    self.replyTo = replyTo
    self.useConversation = useConversation
    self.toName = toName
    self.authenticate = authenticate
    self.autoFooter = autoFooter
    self.inlineCss = inlineCss
  }

  public enum CodingKeys: String, CodingKey {
    case title
    case fromName = "from_name"
    case replyTo = "reply_to"
    case useConversation = "use_conversation"
    case toName = "to_name"
    case authenticate
    case autoFooter = "auto_footer"
    case inlineCss = "inline_css"
  }
}
