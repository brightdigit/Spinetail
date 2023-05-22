import Foundation

import PrchModel
/** A list of available segments. */
public struct CollectionOfSegmentsModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** The list id. */
  public var listId: String?

  /** An array of objects, each representing a list segment. */
  public var segments: [List7Model]?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, listId: String? = nil, segments: [List7Model]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.listId = listId
    self.segments = segments
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case listId = "list_id"
    case segments
    case totalItems = "total_items"
  }
}
