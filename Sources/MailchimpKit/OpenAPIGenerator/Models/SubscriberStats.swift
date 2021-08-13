import Foundation

/** Open and click rates for this subscriber. */

public struct SubscriberStats: Codable {
  /** A subscriber&#x27;s average open rate. */
  public var avgOpenRate: Decimal?
  /** A subscriber&#x27;s average clickthrough rate. */
  public var avgClickRate: Decimal?

  public init(avgOpenRate: Decimal? = nil, avgClickRate: Decimal? = nil) {
    self.avgOpenRate = avgOpenRate
    self.avgClickRate = avgClickRate
  }

  public enum CodingKeys: String, CodingKey {
    case avgOpenRate = "avg_open_rate"
    case avgClickRate = "avg_click_rate"
  }
}
