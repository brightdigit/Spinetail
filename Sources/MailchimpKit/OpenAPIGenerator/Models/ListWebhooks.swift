import Foundation

/** Manage webhooks for a specific list. */

public struct ListWebhooks: Codable {
  /** An array of objects, each representing a specific list member. */
  public var webhooks: [ListWebhooks2]?
  /** The list id. */
  public var listId: String?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(webhooks: [ListWebhooks2]? = nil, listId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.webhooks = webhooks
    self.listId = listId
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case webhooks
    case listId = "list_id"
    case totalItems = "total_items"
    case links = "_links"
  }
}
