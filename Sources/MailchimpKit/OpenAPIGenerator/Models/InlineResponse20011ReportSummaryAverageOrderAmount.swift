import Foundation

public struct InlineResponse20011ReportSummaryAverageOrderAmount: Codable {
  public var amount: Decimal?
  public var currencyCode: String?

  public init(amount: Decimal? = nil, currencyCode: String? = nil) {
    self.amount = amount
    self.currencyCode = currencyCode
  }

  public enum CodingKeys: String, CodingKey {
    case amount
    case currencyCode = "currency_code"
  }
}
