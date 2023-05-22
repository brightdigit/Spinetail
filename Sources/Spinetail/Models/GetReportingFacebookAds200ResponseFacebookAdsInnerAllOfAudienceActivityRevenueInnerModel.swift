import Foundation

import PrchModel
public struct GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfAudienceActivityRevenueInnerModel: Codable, Equatable, Content {
  public var date: String?

  public var revenue: Double?

  public init(date: String? = nil, revenue: Double? = nil) {
    self.date = date
    self.revenue = revenue
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case date
    case revenue
  }
}
