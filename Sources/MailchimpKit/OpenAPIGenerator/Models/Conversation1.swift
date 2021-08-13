import Foundation

/** Details about an individual conversation. Conversation tracking is a feature available to paid accounts that lets you view replies to your campaigns in your Mailchimp account. */

public struct Conversation1: Codable {
  /** A string that uniquely identifies this conversation. */
  public var _id: String?
  /** The total number of messages in this conversation. */
  public var messageCount: Int?
  /** The unique identifier of the campaign for this conversation. */
  public var campaignId: String?
  /** The unique identifier of the list for this conversation. */
  public var listId: String?
  /** The number of unread messages in this conversation. */
  public var unreadMessages: Int?
  /** A label representing the sender of this message. */
  public var fromLabel: String?
  /** A label representing the email of the sender of this message. */
  public var fromEmail: String?
  /** The subject of the message. */
  public var subject: String?
  public var lastMessage: LastMessage?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(_id: String? = nil, messageCount: Int? = nil, campaignId: String? = nil, listId: String? = nil, unreadMessages: Int? = nil, fromLabel: String? = nil, fromEmail: String? = nil, subject: String? = nil, lastMessage: LastMessage? = nil, links: [ResourceLink]? = nil) {
    self._id = _id
    self.messageCount = messageCount
    self.campaignId = campaignId
    self.listId = listId
    self.unreadMessages = unreadMessages
    self.fromLabel = fromLabel
    self.fromEmail = fromEmail
    self.subject = subject
    self.lastMessage = lastMessage
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case messageCount = "message_count"
    case campaignId = "campaign_id"
    case listId = "list_id"
    case unreadMessages = "unread_messages"
    case fromLabel = "from_label"
    case fromEmail = "from_email"
    case subject
    case lastMessage = "last_message"
    case links = "_links"
  }
}
