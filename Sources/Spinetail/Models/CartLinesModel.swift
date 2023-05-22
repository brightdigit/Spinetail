import Foundation

import PrchModel
/** A collection of a cart's line items. */
public struct CartLinesModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** The cart id. */
  public var cartId: String?

  /** An array of objects, each representing a cart's line item. */
  public var lines: [ECommerceCartLineItemModel]?

  /** The store id. */
  public var storeId: String?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, cartId: String? = nil, lines: [ECommerceCartLineItemModel]? = nil, storeId: String? = nil, totalItems: Int? = nil) {
    self.links = links
    self.cartId = cartId
    self.lines = lines
    self.storeId = storeId
    self.totalItems = totalItems
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case cartId = "cart_id"
    case lines
    case storeId = "store_id"
    case totalItems = "total_items"
  }
}
