import Foundation

/** Settings for the campaign including the email subject, from name, and from email address. */

public struct CampaignSettings: Codable {
  /** The subject line for the campaign. */
  public var subjectLine: String?
  /** The preview text for the campaign. */
  public var previewText: String?
  /** The title of the Automation. */
  public var title: String?
  /** The &#x27;from&#x27; name for the Automation (not an email address). */
  public var fromName: String?
  /** The reply-to email address for the Automation. */
  public var replyTo: String?

  public init(subjectLine: String? = nil, previewText: String? = nil, title: String? = nil, fromName: String? = nil, replyTo: String? = nil) {
    self.subjectLine = subjectLine
    self.previewText = previewText
    self.title = title
    self.fromName = fromName
    self.replyTo = replyTo
  }

  public enum CodingKeys: String, CodingKey {
    case subjectLine = "subject_line"
    case previewText = "preview_text"
    case title
    case fromName = "from_name"
    case replyTo = "reply_to"
  }
}
