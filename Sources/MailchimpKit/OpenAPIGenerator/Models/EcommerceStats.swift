import Foundation

/** Ecommerce stats for the list member if the list is attached to a store. */

public struct EcommerceStats: Codable {
  /** The total revenue the list member has brought in. */
  public var totalRevenue: Decimal?
  /** The total number of orders placed by the list member. */
  public var numberOfOrders: Decimal?
  /** The three-letter ISO 4217 code for the currency that the store accepts. */
  public var currencyCode: String?

  public init(totalRevenue: Decimal? = nil, numberOfOrders: Decimal? = nil, currencyCode: String? = nil) {
    self.totalRevenue = totalRevenue
    self.numberOfOrders = numberOfOrders
    self.currencyCode = currencyCode
  }

  public enum CodingKeys: String, CodingKey {
    case totalRevenue = "total_revenue"
    case numberOfOrders = "number_of_orders"
    case currencyCode = "currency_code"
  }
}
