import Foundation

public struct InlineResponse20011ReportSummaryEcommerce: Codable {
  public var totalRevenue: Decimal?
  public var currencyCode: String?

  public init(totalRevenue: Decimal? = nil, currencyCode: String? = nil) {
    self.totalRevenue = totalRevenue
    self.currencyCode = currencyCode
  }

  public enum CodingKeys: String, CodingKey {
    case totalRevenue = "total_revenue"
    case currencyCode = "currency_code"
  }
}
