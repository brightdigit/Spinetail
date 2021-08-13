import Foundation

/** The average campaign statistics for your industry. */

public struct IndustryStats: Codable {
  /** The type of business industry associated with your account. For example: retail, education, etc. */
  public var type: String?
  /** The industry open rate. */
  public var openRate: Decimal?
  /** The industry click rate. */
  public var clickRate: Decimal?
  /** The industry bounce rate. */
  public var bounceRate: Decimal?
  /** The industry unopened rate. */
  public var unopenRate: Decimal?
  /** The industry unsubscribe rate. */
  public var unsubRate: Decimal?
  /** The industry abuse rate. */
  public var abuseRate: Decimal?

  public init(type: String? = nil, openRate: Decimal? = nil, clickRate: Decimal? = nil, bounceRate: Decimal? = nil, unopenRate: Decimal? = nil, unsubRate: Decimal? = nil, abuseRate: Decimal? = nil) {
    self.type = type
    self.openRate = openRate
    self.clickRate = clickRate
    self.bounceRate = bounceRate
    self.unopenRate = unopenRate
    self.unsubRate = unsubRate
    self.abuseRate = abuseRate
  }

  public enum CodingKeys: String, CodingKey {
    case type
    case openRate = "open_rate"
    case clickRate = "click_rate"
    case bounceRate = "bounce_rate"
    case unopenRate = "unopen_rate"
    case unsubRate = "unsub_rate"
    case abuseRate = "abuse_rate"
  }
}
