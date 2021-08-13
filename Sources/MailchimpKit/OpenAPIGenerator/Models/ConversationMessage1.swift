import Foundation

/** An individual message in a conversation. Conversation tracking is a feature available to paid accounts that lets you view replies to your campaigns in your Mailchimp account. */

public struct ConversationMessage1: Codable {
  /** A string that uniquely identifies this message */
  public var _id: String?
  /** A string that identifies this message&#x27;s conversation */
  public var conversationId: String?
  /** The list&#x27;s web ID */
  public var listId: Int?
  /** A label representing the sender of this message */
  public var fromLabel: String?
  /** A label representing the email of the sender of this message */
  public var fromEmail: String?
  /** The subject of this message */
  public var subject: String?
  /** The plain-text content of the message */
  public var message: String?
  /** Whether this message has been marked as read */
  public var read: Bool?
  /** The date and time the message was either sent or received in ISO 8601 format. */
  public var timestamp: Date?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(_id: String? = nil, conversationId: String? = nil, listId: Int? = nil, fromLabel: String? = nil, fromEmail: String? = nil, subject: String? = nil, message: String? = nil, read: Bool? = nil, timestamp: Date? = nil, links: [ResourceLink]? = nil) {
    self._id = _id
    self.conversationId = conversationId
    self.listId = listId
    self.fromLabel = fromLabel
    self.fromEmail = fromEmail
    self.subject = subject
    self.message = message
    self.read = read
    self.timestamp = timestamp
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case conversationId = "conversation_id"
    case listId = "list_id"
    case fromLabel = "from_label"
    case fromEmail = "from_email"
    case subject
    case message
    case read
    case timestamp
    case links = "_links"
  }
}
