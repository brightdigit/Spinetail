import Foundation

import PrchModel
public struct GetAllFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryEcommerceModel: Codable, Equatable, Content {
  public var averageOrderRevenue: Double?

  public var currencyCode: String?

  public var totalRevenue: Double?

  public init(averageOrderRevenue: Double? = nil, currencyCode: String? = nil, totalRevenue: Double? = nil) {
    self.averageOrderRevenue = averageOrderRevenue
    self.currencyCode = currencyCode
    self.totalRevenue = totalRevenue
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case averageOrderRevenue = "average_order_revenue"
    case currencyCode = "currency_code"
    case totalRevenue = "total_revenue"
  }
}
