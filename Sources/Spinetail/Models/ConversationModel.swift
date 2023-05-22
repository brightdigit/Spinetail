import Foundation

import PrchModel
/** Details about an individual conversation. Conversation tracking is a feature available to paid accounts that lets you view replies to your campaigns in your Mailchimp account. */
public struct ConversationModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** The unique identifier of the campaign for this conversation. */
  public var campaignId: String?

  /** A label representing the email of the sender of this message. */
  public var fromEmail: String?

  /** A label representing the sender of this message. */
  public var fromLabel: String?

  /** A string that uniquely identifies this conversation. */
  public var id: String?

  public var lastMessage: LastMessageModel?

  /** The unique identifier of the list for this conversation. */
  public var listId: String?

  /** The total number of messages in this conversation. */
  public var messageCount: Int?

  /** The subject of the message. */
  public var subject: String?

  /** The number of unread messages in this conversation. */
  public var unreadMessages: Int?

  public init(links: [ResourceLinkModel]? = nil, campaignId: String? = nil, fromEmail: String? = nil, fromLabel: String? = nil, id: String? = nil, lastMessage: LastMessageModel? = nil, listId: String? = nil, messageCount: Int? = nil, subject: String? = nil, unreadMessages: Int? = nil) {
    self.links = links
    self.campaignId = campaignId
    self.fromEmail = fromEmail
    self.fromLabel = fromLabel
    self.id = id
    self.lastMessage = lastMessage
    self.listId = listId
    self.messageCount = messageCount
    self.subject = subject
    self.unreadMessages = unreadMessages
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case campaignId = "campaign_id"
    case fromEmail = "from_email"
    case fromLabel = "from_label"
    case id
    case lastMessage = "last_message"
    case listId = "list_id"
    case messageCount = "message_count"
    case subject
    case unreadMessages = "unread_messages"
  }
}
