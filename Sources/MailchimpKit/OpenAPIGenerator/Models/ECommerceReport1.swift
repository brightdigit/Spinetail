import Foundation

/** E-Commerce stats for a campaign. */

public struct ECommerceReport1: Codable {
  /** The total orders for a campaign. */
  public var totalOrders: Int?
  /** The total spent for a campaign. Calculated as the sum of all order totals with no deductions. */
  public var totalSpent: Decimal?
  /** The total revenue for a campaign. Calculated as the sum of all order totals minus shipping and tax totals. */
  public var totalRevenue: Decimal?

  public init(totalOrders: Int? = nil, totalSpent: Decimal? = nil, totalRevenue: Decimal? = nil) {
    self.totalOrders = totalOrders
    self.totalSpent = totalSpent
    self.totalRevenue = totalRevenue
  }

  public enum CodingKeys: String, CodingKey {
    case totalOrders = "total_orders"
    case totalSpent = "total_spent"
    case totalRevenue = "total_revenue"
  }
}
