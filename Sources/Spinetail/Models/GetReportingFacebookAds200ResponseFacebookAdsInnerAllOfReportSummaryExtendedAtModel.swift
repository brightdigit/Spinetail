import Foundation

import PrchModel
public struct GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryExtendedAtModel: Codable, Equatable, Content {
  public var datetime: String?

  public var timezone: String?

  public init(datetime: String? = nil, timezone: String? = nil) {
    self.datetime = datetime
    self.timezone = timezone
  }

  public enum CodingKeys: String, CodingKey {
    case datetime
    case timezone
  }
}
