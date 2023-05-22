import Foundation

import PrchModel
/** Messages from a specific conversation. */
public struct CollectionOfConversationMessagesModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** A string that identifies this conversation. */
  public var conversationId: String?

  /** An array of objects, each representing a conversation messages resources. */
  public var conversationMessages: [ConversationMessageModel]?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, conversationId: String? = nil, conversationMessages: [ConversationMessageModel]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.conversationId = conversationId
    self.conversationMessages = conversationMessages
    self.totalItems = totalItems
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case conversationId = "conversation_id"
    case conversationMessages = "conversation_messages"
    case totalItems = "total_items"
  }
}
