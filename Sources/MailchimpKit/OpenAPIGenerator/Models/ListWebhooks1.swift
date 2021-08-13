import Foundation

/** Webhook configured for the given list. */

public struct ListWebhooks1: Codable {
  /** An string that uniquely identifies this webhook. */
  public var _id: String?
  /** A valid URL for the Webhook. */
  public var url: String?
  public var events: Events2?
  public var sources: Sources1?
  /** The unique id for the list. */
  public var listId: String?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(_id: String? = nil, url: String? = nil, events: Events2? = nil, sources: Sources1? = nil, listId: String? = nil, links: [ResourceLink]? = nil) {
    self._id = _id
    self.url = url
    self.events = events
    self.sources = sources
    self.listId = listId
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case url
    case events
    case sources
    case listId = "list_id"
    case links = "_links"
  }
}
