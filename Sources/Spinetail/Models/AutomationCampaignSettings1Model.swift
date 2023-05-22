import Foundation

import PrchModel
/** The settings for the Automation workflow. */
public struct AutomationCampaignSettings1Model: Codable, Equatable, Content {
  /** The 'from' name for the Automation (not an email address). */
  public var fromName: String?

  /** The reply-to email address for the Automation. */
  public var replyTo: String?

  public init(fromName: String? = nil, replyTo: String? = nil) {
    self.fromName = fromName
    self.replyTo = replyTo
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case fromName = "from_name"
    case replyTo = "reply_to"
  }
}
