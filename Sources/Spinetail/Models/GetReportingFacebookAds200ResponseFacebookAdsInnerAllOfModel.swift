import Foundation

import PrchModel
public struct GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfModel: Codable, Equatable, Content {
  public var audience: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2AudienceModel?

  public var audienceActivity: GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfAudienceActivityModel?

  public var budget: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2BudgetModel?

  public var channel: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2ChannelModel?

  public var reportSummary: GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryModel?

  public init(audience: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2AudienceModel? = nil, audienceActivity: GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfAudienceActivityModel? = nil, budget: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2BudgetModel? = nil, channel: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2ChannelModel? = nil, reportSummary: GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryModel? = nil) {
    self.audience = audience
    self.audienceActivity = audienceActivity
    self.budget = budget
    self.channel = channel
    self.reportSummary = reportSummary
  }

  public enum CodingKeys: String, CodingKey {
    case audience
    case audienceActivity = "audience_activity"
    case budget
    case channel
    case reportSummary = "report_summary"
  }
}
