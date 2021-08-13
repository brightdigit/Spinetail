import Foundation

/** [Default values for campaigns](https://mailchimp.com/help/edit-your-emails-subject-preview-text-from-name-or-from-email-address/) created for this list. */

public struct CampaignDefaults: Codable {
  /** The default from name for campaigns sent to this list. */
  public var fromName: String
  /** The default from email for campaigns sent to this list. */
  public var fromEmail: String
  /** The default subject line for campaigns sent to this list. */
  public var subject: String
  /** The default language for this lists&#x27;s forms. */
  public var language: String

  public init(fromName: String, fromEmail: String, subject: String, language: String) {
    self.fromName = fromName
    self.fromEmail = fromEmail
    self.subject = subject
    self.language = language
  }

  public enum CodingKeys: String, CodingKey {
    case fromName = "from_name"
    case fromEmail = "from_email"
    case subject
    case language
  }
}
