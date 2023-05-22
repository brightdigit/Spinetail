import Foundation

import PrchModel
/** A collection of this account's tracked conversations. */
public struct TrackedConversationsModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** A list of conversations. */
  public var conversations: [ConversationModel]?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, conversations: [ConversationModel]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.conversations = conversations
    self.totalItems = totalItems
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case conversations
    case totalItems = "total_items"
  }
}
