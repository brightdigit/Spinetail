import Foundation

/** Messages from a specific conversation. */

public struct CollectionOfConversationMessages: Codable {
  /** An array of objects, each representing a conversation messages resources. */
  public var conversationMessages: [ConversationMessage1]?
  /** A string that identifies this conversation. */
  public var conversationId: String?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(conversationMessages: [ConversationMessage1]? = nil, conversationId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.conversationMessages = conversationMessages
    self.conversationId = conversationId
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case conversationMessages = "conversation_messages"
    case conversationId = "conversation_id"
    case totalItems = "total_items"
    case links = "_links"
  }
}
