import Foundation

import PrchModel
/** Manage webhooks for batch requests. */
public struct BatchWebhooksModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  /** An array of objects, each representing a Batch Webhook. */
  public var webhooks: [BatchWebhookModel]?

  public init(links: [ResourceLinkModel]? = nil, totalItems: Int? = nil, webhooks: [BatchWebhookModel]? = nil) {
    self.links = links
    self.totalItems = totalItems
    self.webhooks = webhooks
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case totalItems = "total_items"
    case webhooks
  }
}
