import Foundation

import PrchModel
/** Manage webhooks for a specific list. */
public struct ListWebhooksModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** The list id. */
  public var listId: String?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  /** An array of objects, each representing a specific list member. */
  public var webhooks: [ListWebhooksModel]?

  public init(links: [ResourceLinkModel]? = nil, listId: String? = nil, totalItems: Int? = nil, webhooks: [ListWebhooksModel]? = nil) {
    self.links = links
    self.listId = listId
    self.totalItems = totalItems
    self.webhooks = webhooks
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case listId = "list_id"
    case totalItems = "total_items"
    case webhooks
  }
}
