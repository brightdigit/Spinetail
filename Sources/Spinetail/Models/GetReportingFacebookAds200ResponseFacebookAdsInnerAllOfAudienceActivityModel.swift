import Foundation

import PrchModel
public struct GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfAudienceActivityModel: Codable, Equatable, Content {
  public var clicks: [GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfAudienceActivityClicksInnerModel]?

  public var impressions: [GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfAudienceActivityImpressionsInnerModel]?

  public var revenue: [GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfAudienceActivityRevenueInnerModel]?

  public init(clicks: [GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfAudienceActivityClicksInnerModel]? = nil, impressions: [GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfAudienceActivityImpressionsInnerModel]? = nil, revenue: [GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfAudienceActivityRevenueInnerModel]? = nil) {
    self.clicks = clicks
    self.impressions = impressions
    self.revenue = revenue
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case clicks
    case impressions
    case revenue
  }
}
