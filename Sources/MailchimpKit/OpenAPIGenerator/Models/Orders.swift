import Foundation

/** A collection of orders in an account. */

public struct Orders: Codable {
  /** An array of objects, each representing an order resource. */
  public var orders: [EcommerceOrder3]?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(orders: [EcommerceOrder3]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.orders = orders
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case orders
    case totalItems = "total_items"
    case links = "_links"
  }
}
