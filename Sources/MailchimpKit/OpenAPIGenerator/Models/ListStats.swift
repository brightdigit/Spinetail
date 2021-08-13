import Foundation

/** The average campaign statistics for your list. This won&#x27;t be present if we haven&#x27;t calculated it yet for this list. */

public struct ListStats: Codable {
  /** The average number of subscriptions per month for the list. */
  public var subRate: Decimal?
  /** The average number of unsubscriptions per month for the list. */
  public var unsubRate: Decimal?
  /** The average open rate (a percentage represented as a number between 0 and 100) per campaign for the list. */
  public var openRate: Decimal?
  /** The average click rate (a percentage represented as a number between 0 and 100) per campaign for the list. */
  public var clickRate: Decimal?

  public init(subRate: Decimal? = nil, unsubRate: Decimal? = nil, openRate: Decimal? = nil, clickRate: Decimal? = nil) {
    self.subRate = subRate
    self.unsubRate = unsubRate
    self.openRate = openRate
    self.clickRate = clickRate
  }

  public enum CodingKeys: String, CodingKey {
    case subRate = "sub_rate"
    case unsubRate = "unsub_rate"
    case openRate = "open_rate"
    case clickRate = "click_rate"
  }
}
