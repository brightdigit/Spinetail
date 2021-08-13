import Foundation

/** Manage webhooks for batch requests. */

public struct BatchWebhooks: Codable {
  /** An array of objects, each representing a Batch Webhook. */
  public var webhooks: [BatchWebhook3]?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(webhooks: [BatchWebhook3]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.webhooks = webhooks
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case webhooks
    case totalItems = "total_items"
    case links = "_links"
  }
}
