import Foundation

import PrchModel
public struct GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryEcommerceModel: Codable, Equatable, Content {
  public var currencyCode: String?

  public var totalRevenue: Double?

  public init(currencyCode: String? = nil, totalRevenue: Double? = nil) {
    self.currencyCode = currencyCode
    self.totalRevenue = totalRevenue
  }

  public enum CodingKeys: String, CodingKey {
    case currencyCode = "currency_code"
    case totalRevenue = "total_revenue"
  }
}
