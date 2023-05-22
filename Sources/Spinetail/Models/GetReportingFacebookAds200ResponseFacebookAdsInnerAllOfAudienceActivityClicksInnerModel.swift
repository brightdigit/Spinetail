import Foundation

import PrchModel
public struct GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfAudienceActivityClicksInnerModel: Codable, Equatable, Content {
  public var clicks: Int?

  public var date: String?

  public init(clicks: Int? = nil, date: String? = nil) {
    self.clicks = clicks
    self.date = date
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case clicks
    case date
  }
}
