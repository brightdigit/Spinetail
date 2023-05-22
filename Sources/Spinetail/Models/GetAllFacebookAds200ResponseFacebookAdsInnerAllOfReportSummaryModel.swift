import Foundation

import PrchModel
public struct GetAllFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryModel: Codable, Equatable, Content {
  public var clickRate: Double?

  public var clicks: Int?

  public var conversionRate: Double?

  public var ecommerce: GetAllFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryEcommerceModel?

  public var engagements: Int?

  public var impressions: Double?

  public var openRate: Double?

  public var opens: Int?

  public var reach: Int?

  public var subscriberClicks: Int?

  public var subscribes: Int?

  public var totalSent: Int?

  public var uniqueOpens: Int?

  public var uniqueVisits: Int?

  public var visits: Int?

  public init(clickRate: Double? = nil, clicks: Int? = nil, conversionRate: Double? = nil, ecommerce: GetAllFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryEcommerceModel? = nil, engagements: Int? = nil, impressions: Double? = nil, openRate: Double? = nil, opens: Int? = nil, reach: Int? = nil, subscriberClicks: Int? = nil, subscribes: Int? = nil, totalSent: Int? = nil, uniqueOpens: Int? = nil, uniqueVisits: Int? = nil, visits: Int? = nil) {
    self.clickRate = clickRate
    self.clicks = clicks
    self.conversionRate = conversionRate
    self.ecommerce = ecommerce
    self.engagements = engagements
    self.impressions = impressions
    self.openRate = openRate
    self.opens = opens
    self.reach = reach
    self.subscriberClicks = subscriberClicks
    self.subscribes = subscribes
    self.totalSent = totalSent
    self.uniqueOpens = uniqueOpens
    self.uniqueVisits = uniqueVisits
    self.visits = visits
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case clickRate = "click_rate"
    case clicks
    case conversionRate = "conversion_rate"
    case ecommerce
    case engagements
    case impressions
    case openRate = "open_rate"
    case opens
    case reach
    case subscriberClicks = "subscriber_clicks"
    case subscribes
    case totalSent = "total_sent"
    case uniqueOpens = "unique_opens"
    case uniqueVisits = "unique_visits"
    case visits
  }
}
