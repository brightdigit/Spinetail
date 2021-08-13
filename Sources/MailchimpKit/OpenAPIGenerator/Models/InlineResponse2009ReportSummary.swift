import Foundation

public struct InlineResponse2009ReportSummary: Codable {
  public var opens: Int?
  public var uniqueOpens: Int?
  public var openRate: Decimal?
  public var clicks: Int?
  public var subscriberClicks: Int?
  public var clickRate: Decimal?
  public var visits: Int?
  public var uniqueVisits: Int?
  public var conversionRate: Decimal?
  public var subscribes: Int?
  public var ecommerce: InlineResponse2009ReportSummaryEcommerce?
  public var impressions: Decimal?
  public var reach: Int?
  public var engagements: Int?
  public var totalSent: Int?

  public init(opens: Int? = nil, uniqueOpens: Int? = nil, openRate: Decimal? = nil, clicks: Int? = nil, subscriberClicks: Int? = nil, clickRate: Decimal? = nil, visits: Int? = nil, uniqueVisits: Int? = nil, conversionRate: Decimal? = nil, subscribes: Int? = nil, ecommerce: InlineResponse2009ReportSummaryEcommerce? = nil, impressions: Decimal? = nil, reach: Int? = nil, engagements: Int? = nil, totalSent: Int? = nil) {
    self.opens = opens
    self.uniqueOpens = uniqueOpens
    self.openRate = openRate
    self.clicks = clicks
    self.subscriberClicks = subscriberClicks
    self.clickRate = clickRate
    self.visits = visits
    self.uniqueVisits = uniqueVisits
    self.conversionRate = conversionRate
    self.subscribes = subscribes
    self.ecommerce = ecommerce
    self.impressions = impressions
    self.reach = reach
    self.engagements = engagements
    self.totalSent = totalSent
  }

  public enum CodingKeys: String, CodingKey {
    case opens
    case uniqueOpens = "unique_opens"
    case openRate = "open_rate"
    case clicks
    case subscriberClicks = "subscriber_clicks"
    case clickRate = "click_rate"
    case visits
    case uniqueVisits = "unique_visits"
    case conversionRate = "conversion_rate"
    case subscribes
    case ecommerce
    case impressions
    case reach
    case engagements
    case totalSent = "total_sent"
  }
}
