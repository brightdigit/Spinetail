import Foundation

/** For sent campaigns, a summary of opens and clicks. */

public struct CampaignReportSummary: Codable {
  /** The total number of opens for a campaign. */
  public var opens: Int?
  /** The number of unique opens. */
  public var uniqueOpens: Int?
  /** The number of unique opens divided by the total number of successful deliveries. */
  public var openRate: Decimal?
  /** The total number of clicks for an campaign. */
  public var clicks: Int?
  /** The number of unique clicks. */
  public var subscriberClicks: Int?
  /** The number of unique clicks divided by the total number of successful deliveries. */
  public var clickRate: Decimal?
  public var ecommerce: ECommerceReport1?

  public init(opens: Int? = nil, uniqueOpens: Int? = nil, openRate: Decimal? = nil, clicks: Int? = nil, subscriberClicks: Int? = nil, clickRate: Decimal? = nil, ecommerce: ECommerceReport1? = nil) {
    self.opens = opens
    self.uniqueOpens = uniqueOpens
    self.openRate = openRate
    self.clicks = clicks
    self.subscriberClicks = subscriberClicks
    self.clickRate = clickRate
    self.ecommerce = ecommerce
  }

  public enum CodingKeys: String, CodingKey {
    case opens
    case uniqueOpens = "unique_opens"
    case openRate = "open_rate"
    case clicks
    case subscriberClicks = "subscriber_clicks"
    case clickRate = "click_rate"
    case ecommerce
  }
}
