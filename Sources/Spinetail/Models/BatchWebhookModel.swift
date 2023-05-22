import Foundation

import PrchModel
/** A webhook configured for batch status updates. */
public struct BatchWebhookModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** A string that uniquely identifies this Batch Webhook. */
  public var id: String?

  /** A valid URL for the Webhook. */
  public var url: String?

  public init(links: [ResourceLinkModel]? = nil, id: String? = nil, url: String? = nil) {
    self.links = links
    self.id = id
    self.url = url
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case id
    case url
  }
}
