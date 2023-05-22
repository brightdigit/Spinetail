import Foundation

import PrchModel
public struct LandingPageReportEcommerceModel: Codable, Equatable, Content {
  /** The average order revenue of this landing page. */
  public var averageOrderRevenue: Double?

  /** The user's currency code. */
  public var currencyCode: String?

  /** The total number of orders associated with this landing page. */
  public var totalOrders: Int?

  /** The total revenue of this landing page. */
  public var totalRevenue: Double?

  public init(averageOrderRevenue: Double? = nil, currencyCode: String? = nil, totalOrders: Int? = nil, totalRevenue: Double? = nil) {
    self.averageOrderRevenue = averageOrderRevenue
    self.currencyCode = currencyCode
    self.totalOrders = totalOrders
    self.totalRevenue = totalRevenue
  }

  public enum CodingKeys: String, CodingKey {
    case averageOrderRevenue = "average_order_revenue"
    case currencyCode = "currency_code"
    case totalOrders = "total_orders"
    case totalRevenue = "total_revenue"
  }
}
