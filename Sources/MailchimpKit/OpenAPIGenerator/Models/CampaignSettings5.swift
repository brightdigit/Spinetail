import Foundation

/** Settings for the campaign including the email subject, from name, and from email address. */

public struct CampaignSettings5: Codable {
  /** The subject line for the campaign. */
  public var subjectLine: String?
  /** The preview text for the campaign. */
  public var previewText: String?
  /** The title of the campaign. */
  public var title: String?
  /** The &#x27;from&#x27; name on the campaign (not an email address). */
  public var fromName: String?
  /** The reply-to email address for the campaign. */
  public var replyTo: String?
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
  /** The id for the template used in this campaign. */
  public var templateId: Int?
  /** Whether the campaign uses the drag-and-drop editor. */
  public var dragAndDrop: Bool?

  public init(subjectLine: String? = nil, previewText: String? = nil, title: String? = nil, fromName: String? = nil, replyTo: String? = nil, authenticate: Bool? = nil, autoFooter: Bool? = nil, inlineCss: Bool? = nil, autoTweet: Bool? = nil, autoFbPost: [String]? = nil, fbComments: Bool? = nil, templateId: Int? = nil, dragAndDrop: Bool? = nil) {
    self.subjectLine = subjectLine
    self.previewText = previewText
    self.title = title
    self.fromName = fromName
    self.replyTo = replyTo
    self.authenticate = authenticate
    self.autoFooter = autoFooter
    self.inlineCss = inlineCss
    self.autoTweet = autoTweet
    self.autoFbPost = autoFbPost
    self.fbComments = fbComments
    self.templateId = templateId
    self.dragAndDrop = dragAndDrop
  }

  public enum CodingKeys: String, CodingKey {
    case subjectLine = "subject_line"
    case previewText = "preview_text"
    case title
    case fromName = "from_name"
    case replyTo = "reply_to"
    case authenticate
    case autoFooter = "auto_footer"
    case inlineCss = "inline_css"
    case autoTweet = "auto_tweet"
    case autoFbPost = "auto_fb_post"
    case fbComments = "fb_comments"
    case templateId = "template_id"
    case dragAndDrop = "drag_and_drop"
  }
}
