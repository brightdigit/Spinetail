import Foundation

public struct InlineResponse2009ReportSummaryEcommerce: Codable {
  public var totalRevenue: Decimal?
  public var currencyCode: String?
  public var averageOrderRevenue: Decimal?

  public init(totalRevenue: Decimal? = nil, currencyCode: String? = nil, averageOrderRevenue: Decimal? = nil) {
    self.totalRevenue = totalRevenue
    self.currencyCode = currencyCode
    self.averageOrderRevenue = averageOrderRevenue
  }

  public enum CodingKeys: String, CodingKey {
    case totalRevenue = "total_revenue"
    case currencyCode = "currency_code"
    case averageOrderRevenue = "average_order_revenue"
  }
}
