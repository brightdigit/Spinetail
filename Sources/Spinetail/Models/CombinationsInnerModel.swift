import Foundation

import PrchModel
public struct CombinationsInnerModel: Codable, Equatable, Content {
  /** The index of `variate_settings.contents` used. */
  public var contentDescription: Int?

  /** The index of `variate_settings.from_names` used. */
  public var fromName: Int?

  /** Unique ID for the combination. */
  public var id: String?

  /** The number of recipients for this combination. */
  public var recipients: Int?

  /** The index of `variate_settings.reply_to_addresses` used. */
  public var replyTo: Int?

  /** The index of `variate_settings.send_times` used. */
  public var sendTime: Int?

  /** The index of `variate_settings.subject_lines` used. */
  public var subjectLine: Int?

  public init(contentDescription: Int? = nil, fromName: Int? = nil, id: String? = nil, recipients: Int? = nil, replyTo: Int? = nil, sendTime: Int? = nil, subjectLine: Int? = nil) {
    self.contentDescription = contentDescription
    self.fromName = fromName
    self.id = id
    self.recipients = recipients
    self.replyTo = replyTo
    self.sendTime = sendTime
    self.subjectLine = subjectLine
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case contentDescription = "content_description"
    case fromName = "from_name"
    case id
    case recipients
    case replyTo = "reply_to"
    case sendTime = "send_time"
    case subjectLine = "subject_line"
  }
}
