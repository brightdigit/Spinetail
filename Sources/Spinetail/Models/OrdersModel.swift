import Foundation

import PrchModel
/** A collection of orders in an account. */
public struct OrdersModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** An array of objects, each representing an order resource. */
  public var orders: [ECommerceOrderModel]?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, orders: [ECommerceOrderModel]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.orders = orders
    self.totalItems = totalItems
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case orders
    case totalItems = "total_items"
  }
}
