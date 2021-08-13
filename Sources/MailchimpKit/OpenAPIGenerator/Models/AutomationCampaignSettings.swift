import Foundation

/** The settings for the Automation workflow. */

public struct AutomationCampaignSettings: Codable {
  /** The &#x27;from&#x27; name for the Automation (not an email address). */
  public var fromName: String?
  /** The reply-to email address for the Automation. */
  public var replyTo: String?

  public init(fromName: String? = nil, replyTo: String? = nil) {
    self.fromName = fromName
    self.replyTo = replyTo
  }

  public enum CodingKeys: String, CodingKey {
    case fromName = "from_name"
    case replyTo = "reply_to"
  }
}
