import Foundation

import PrchModel
public struct GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfAudienceActivityImpressionsInnerModel: Codable, Equatable, Content {
  public var date: String?

  public var impressions: Int?

  public init(date: String? = nil, impressions: Int? = nil) {
    self.date = date
    self.impressions = impressions
  }

  public enum CodingKeys: String, CodingKey {
    case date
    case impressions
  }
}
