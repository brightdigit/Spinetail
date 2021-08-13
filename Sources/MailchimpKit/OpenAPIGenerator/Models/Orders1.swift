import Foundation

/** A collection of orders in a store. */

public struct Orders1: Codable {
  /** The unique identifier for the store. */
  public var storeId: String?
  /** An array of objects, each representing an order in a store. */
  public var orders: [EcommerceOrder3]?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(storeId: String? = nil, orders: [EcommerceOrder3]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.storeId = storeId
    self.orders = orders
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case storeId = "store_id"
    case orders
    case totalItems = "total_items"
    case links = "_links"
  }
}
