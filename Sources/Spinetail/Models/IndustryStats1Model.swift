import Foundation

import PrchModel
/** The average campaign statistics for your industry. */
public struct IndustryStats1Model: Codable, Equatable, Content {
  /** The industry abuse rate. */
  public var abuseRate: Double?

  /** The industry bounce rate. */
  public var bounceRate: Double?

  /** The industry click rate. */
  public var clickRate: Double?

  /** The industry open rate. */
  public var openRate: Double?

  /** The type of business industry associated with your account. For example: retail, education, etc. */
  public var type: String?

  /** The industry unopened rate. */
  public var unopenRate: Double?

  /** The industry unsubscribe rate. */
  public var unsubRate: Double?

  public init(abuseRate: Double? = nil, bounceRate: Double? = nil, clickRate: Double? = nil, openRate: Double? = nil, type: String? = nil, unopenRate: Double? = nil, unsubRate: Double? = nil) {
    self.abuseRate = abuseRate
    self.bounceRate = bounceRate
    self.clickRate = clickRate
    self.openRate = openRate
    self.type = type
    self.unopenRate = unopenRate
    self.unsubRate = unsubRate
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case abuseRate = "abuse_rate"
    case bounceRate = "bounce_rate"
    case clickRate = "click_rate"
    case openRate = "open_rate"
    case type
    case unopenRate = "unopen_rate"
    case unsubRate = "unsub_rate"
  }
}
