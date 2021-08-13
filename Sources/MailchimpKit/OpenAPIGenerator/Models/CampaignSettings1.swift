import Foundation

/** The settings for your campaign, including subject, from name, reply-to address, and more. */

public struct CampaignSettings1: Codable {
  /** The subject line for the campaign. */
  public var subjectLine: String?
  /** The preview text for the campaign. */
  public var previewText: String?
  /** The title of the campaign. */
  public var title: String?
  /** The &#x27;from&#x27; name on the campaign (not an email address). */
  public var fromName: String?
  /** The reply-to email address for the campaign. Note: while this field is not required for campaign creation, it is required for sending. */
  public var replyTo: String?
  /** Use Mailchimp Conversation feature to manage out-of-office replies. */
  public var useConversation: Bool?
  /** The campaign&#x27;s custom &#x27;To&#x27; name. Typically the first name [audience field](https://mailchimp.com/help/getting-started-with-merge-tags/). */
  public var toName: String?
  /** If the campaign is listed in a folder, the id for that folder. */
  public var folderId: String?
  /** Whether Mailchimp [authenticated](https://mailchimp.com/help/about-email-authentication/) the campaign. Defaults to &#x60;true&#x60;. */
  public var authenticate: Bool?
  /** Automatically append Mailchimp&#x27;s [default footer](https://mailchimp.com/help/about-campaign-footers/) to the campaign. */
  public var autoFooter: Bool?
  /** Automatically inline the CSS included with the campaign content. */
  public var inlineCss: Bool?
  /** Automatically tweet a link to the [campaign archive](https://mailchimp.com/help/about-email-campaign-archives-and-pages/) page when the campaign is sent. */
  public var autoTweet: Bool?
  /** An array of [Facebook](https://mailchimp.com/help/connect-or-disconnect-the-facebook-integration/) page ids to auto-post to. */
  public var autoFbPost: [String]?
  /** Allows Facebook comments on the campaign (also force-enables the Campaign Archive toolbar). Defaults to &#x60;true&#x60;. */
  public var fbComments: Bool?
  /** The id of the template to use. */
  public var templateId: Int?

  public init(subjectLine: String? = nil, previewText: String? = nil, title: String? = nil, fromName: String? = nil, replyTo: String? = nil, useConversation: Bool? = nil, toName: String? = nil, folderId: String? = nil, authenticate: Bool? = nil, autoFooter: Bool? = nil, inlineCss: Bool? = nil, autoTweet: Bool? = nil, autoFbPost: [String]? = nil, fbComments: Bool? = nil, templateId: Int? = nil) {
    self.subjectLine = subjectLine
    self.previewText = previewText
    self.title = title
    self.fromName = fromName
    self.replyTo = replyTo
    self.useConversation = useConversation
    self.toName = toName
    self.folderId = folderId
    self.authenticate = authenticate
    self.autoFooter = autoFooter
    self.inlineCss = inlineCss
    self.autoTweet = autoTweet
    self.autoFbPost = autoFbPost
    self.fbComments = fbComments
    self.templateId = templateId
  }

  public enum CodingKeys: String, CodingKey {
    case subjectLine = "subject_line"
    case previewText = "preview_text"
    case title
    case fromName = "from_name"
    case replyTo = "reply_to"
    case useConversation = "use_conversation"
    case toName = "to_name"
    case folderId = "folder_id"
    case authenticate
    case autoFooter = "auto_footer"
    case inlineCss = "inline_css"
    case autoTweet = "auto_tweet"
    case autoFbPost = "auto_fb_post"
    case fbComments = "fb_comments"
    case templateId = "template_id"
  }
}
