import Foundation

/** A collection of this account&#x27;s tracked conversations. */

public struct TrackedConversations: Codable {
  /** A list of conversations. */
  public var conversations: [Conversation1]?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(conversations: [Conversation1]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.conversations = conversations
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case conversations
    case totalItems = "total_items"
    case links = "_links"
  }
}
