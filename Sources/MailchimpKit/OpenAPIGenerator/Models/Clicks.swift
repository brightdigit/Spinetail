import Foundation

/** An object describing the click activity for the campaign. */

public struct Clicks: Codable {
  /** The total number of clicks for the campaign. */
  public var clicksTotal: Int?
  /** The total number of unique clicks for links across a campaign. */
  public var uniqueClicks: Int?
  /** The total number of subscribers who clicked on a campaign. */
  public var uniqueSubscriberClicks: Int?
  /** The number of unique clicks divided by the total number of successful deliveries. */
  public var clickRate: Decimal?
  /** The date and time of the last recorded click for the campaign in ISO 8601 format. */
  public var lastClick: Date?

  public init(clicksTotal: Int? = nil, uniqueClicks: Int? = nil, uniqueSubscriberClicks: Int? = nil, clickRate: Decimal? = nil, lastClick: Date? = nil) {
    self.clicksTotal = clicksTotal
    self.uniqueClicks = uniqueClicks
    self.uniqueSubscriberClicks = uniqueSubscriberClicks
    self.clickRate = clickRate
    self.lastClick = lastClick
  }

  public enum CodingKeys: String, CodingKey {
    case clicksTotal = "clicks_total"
    case uniqueClicks = "unique_clicks"
    case uniqueSubscriberClicks = "unique_subscriber_clicks"
    case clickRate = "click_rate"
    case lastClick = "last_click"
  }
}
