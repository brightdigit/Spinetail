import Foundation

/** A summary of List&#x27;s locations. */

public struct ListLocations: Codable {
  /** An array of objects, each representing a list&#x27;s top subscriber locations. */
  public var locations: [ListLocation]?
  /** The unique id for the list. */
  public var listId: String?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(locations: [ListLocation]? = nil, listId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.locations = locations
    self.listId = listId
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case locations
    case listId = "list_id"
    case totalItems = "total_items"
    case links = "_links"
  }
}
