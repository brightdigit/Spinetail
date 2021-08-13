import Foundation

public struct LandingPageReportEcommerce: Codable {
  /** The total revenue of this landing page. */
  public var totalRevenue: Decimal?
  /** The user&#x27;s currency code. */
  public var currencyCode: String?
  /** The total number of orders associated with this landing page. */
  public var totalOrders: Int?
  /** The average order revenue of this landing page. */
  public var averageOrderRevenue: Decimal?

  public init(totalRevenue: Decimal? = nil, currencyCode: String? = nil, totalOrders: Int? = nil, averageOrderRevenue: Decimal? = nil) {
    self.totalRevenue = totalRevenue
    self.currencyCode = currencyCode
    self.totalOrders = totalOrders
    self.averageOrderRevenue = averageOrderRevenue
  }

  public enum CodingKeys: String, CodingKey {
    case totalRevenue = "total_revenue"
    case currencyCode = "currency_code"
    case totalOrders = "total_orders"
    case averageOrderRevenue = "average_order_revenue"
  }
}
