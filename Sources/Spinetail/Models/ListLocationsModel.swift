import Foundation

import PrchModel
/** A summary of List's locations. */
public struct ListLocationsModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** The unique id for the list. */
  public var listId: String?

  /** An array of objects, each representing a list's top subscriber locations. */
  public var locations: [ListLocationModel]?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, listId: String? = nil, locations: [ListLocationModel]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.listId = listId
    self.locations = locations
    self.totalItems = totalItems
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case listId = "list_id"
    case locations
    case totalItems = "total_items"
  }
}
