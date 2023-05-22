import Foundation

import PrchModel
/** The average campaign statistics for your list. This won't be present if we haven't calculated it yet for this list. */
public struct ListStatsModel: Codable, Equatable, Content {
  /** The average click rate (a percentage represented as a number between 0 and 100) per campaign for the list. */
  public var clickRate: Double?

  /** The average open rate (a percentage represented as a number between 0 and 100) per campaign for the list. */
  public var openRate: Double?

  /** The average number of subscriptions per month for the list. */
  public var subRate: Double?

  /** The average number of unsubscriptions per month for the list. */
  public var unsubRate: Double?

  public init(clickRate: Double? = nil, openRate: Double? = nil, subRate: Double? = nil, unsubRate: Double? = nil) {
    self.clickRate = clickRate
    self.openRate = openRate
    self.subRate = subRate
    self.unsubRate = unsubRate
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case clickRate = "click_rate"
    case openRate = "open_rate"
    case subRate = "sub_rate"
    case unsubRate = "unsub_rate"
  }
}
