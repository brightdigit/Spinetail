import Foundation

/** A collection of events for a given contact */

public struct CollectionOfEvents: Codable {
  /** An array of objects, each representing an event. */
  public var events: [Event]?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(events: [Event]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.events = events
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case events
    case totalItems = "total_items"
    case links = "_links"
  }
}
