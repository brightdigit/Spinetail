import Foundation

/** A webhook configured for batch status updates. */

public struct BatchWebhook3: Codable {
  /** A string that uniquely identifies this Batch Webhook. */
  public var _id: String?
  /** A valid URL for the Webhook. */
  public var url: String?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(_id: String? = nil, url: String? = nil, links: [ResourceLink]? = nil) {
    self._id = _id
    self.url = url
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case url
    case links = "_links"
  }
}
