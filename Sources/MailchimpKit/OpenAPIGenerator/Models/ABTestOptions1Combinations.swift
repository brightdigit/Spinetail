import Foundation

public struct ABTestOptions1Combinations: Codable {
  /** Unique ID for the combination. */
  public var _id: String?
  /** The index of &#x60;variate_settings.subject_lines&#x60; used. */
  public var subjectLine: Int?
  /** The index of &#x60;variate_settings.send_times&#x60; used. */
  public var sendTime: Int?
  /** The index of &#x60;variate_settings.from_names&#x60; used. */
  public var fromName: Int?
  /** The index of &#x60;variate_settings.reply_to_addresses&#x60; used. */
  public var replyTo: Int?
  /** The index of &#x60;variate_settings.contents&#x60; used. */
  public var contentDescription: Int?
  /** The number of recipients for this combination. */
  public var recipients: Int?

  public init(_id: String? = nil, subjectLine: Int? = nil, sendTime: Int? = nil, fromName: Int? = nil, replyTo: Int? = nil, contentDescription: Int? = nil, recipients: Int? = nil) {
    self._id = _id
    self.subjectLine = subjectLine
    self.sendTime = sendTime
    self.fromName = fromName
    self.replyTo = replyTo
    self.contentDescription = contentDescription
    self.recipients = recipients
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case subjectLine = "subject_line"
    case sendTime = "send_time"
    case fromName = "from_name"
    case replyTo = "reply_to"
    case contentDescription = "content_description"
    case recipients
  }
}
