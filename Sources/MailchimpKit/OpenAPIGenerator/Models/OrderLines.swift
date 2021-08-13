import Foundation

/** A collection of an order&#x27;s line items. */

public struct OrderLines: Codable {
  /** The store id. */
  public var storeId: String?
  /** The order id. */
  public var orderId: String?
  /** An array of objects, each representing an order&#x27;s line item. */
  public var lines: [EcommerceOrderLineItem5]?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(storeId: String? = nil, orderId: String? = nil, lines: [EcommerceOrderLineItem5]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.storeId = storeId
    self.orderId = orderId
    self.lines = lines
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case storeId = "store_id"
    case orderId = "order_id"
    case lines
    case totalItems = "total_items"
    case links = "_links"
  }
}
