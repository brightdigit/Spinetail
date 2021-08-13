import Foundation

/** A collection of a cart&#x27;s line items. */

public struct CartLines: Codable {
  /** The store id. */
  public var storeId: String?
  /** The cart id. */
  public var cartId: String?
  /** An array of objects, each representing a cart&#x27;s line item. */
  public var lines: [EcommerceCartLineItem5]?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(storeId: String? = nil, cartId: String? = nil, lines: [EcommerceCartLineItem5]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.storeId = storeId
    self.cartId = cartId
    self.lines = lines
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case storeId = "store_id"
    case cartId = "cart_id"
    case lines
    case totalItems = "total_items"
    case links = "_links"
  }
}
