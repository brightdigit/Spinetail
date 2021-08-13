import Foundation

/** The most recent message in the conversation. */

public struct LastMessage: Codable {
  /** A label representing the sender of this message. */
  public var fromLabel: String?
  /** A label representing the email of the sender of this message. */
  public var fromEmail: String?
  /** The subject of this message. */
  public var subject: String?
  /** The plain-text content of the message. */
  public var message: String?
  /** Whether this message has been marked as read. */
  public var read: Bool?
  /** The date and time the message was either sent or received in ISO 8601 format. */
  public var timestamp: Date?

  public init(fromLabel: String? = nil, fromEmail: String? = nil, subject: String? = nil, message: String? = nil, read: Bool? = nil, timestamp: Date? = nil) {
    self.fromLabel = fromLabel
    self.fromEmail = fromEmail
    self.subject = subject
    self.message = message
    self.read = read
    self.timestamp = timestamp
  }

  public enum CodingKeys: String, CodingKey {
    case fromLabel = "from_label"
    case fromEmail = "from_email"
    case subject
    case message
    case read
    case timestamp
  }
}
