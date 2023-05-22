import Foundation

import PrchModel
/** Open and click rates for this subscriber. */
public struct SubscriberStatsModel: Codable, Equatable, Content {
  /** A subscriber's average clickthrough rate. */
  public var avgClickRate: Double?

  /** A subscriber's average open rate. */
  public var avgOpenRate: Double?

  public init(avgClickRate: Double? = nil, avgOpenRate: Double? = nil) {
    self.avgClickRate = avgClickRate
    self.avgOpenRate = avgOpenRate
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case avgClickRate = "avg_click_rate"
    case avgOpenRate = "avg_open_rate"
  }
}
