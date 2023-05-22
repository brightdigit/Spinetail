import Foundation

import PrchModel
/** Open and click rates for this subscriber. */
public struct SubscriberStats1Model: Codable, Equatable, Content {
  /** A subscriber's average clickthrough rate. */
  public var avgClickRate: Double?

  /** A subscriber's average open rate. */
  public var avgOpenRate: Double?

  public var ecommerceData: EcommerceStatsModel?

  public init(avgClickRate: Double? = nil, avgOpenRate: Double? = nil, ecommerceData: EcommerceStatsModel? = nil) {
    self.avgClickRate = avgClickRate
    self.avgOpenRate = avgOpenRate
    self.ecommerceData = ecommerceData
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case avgClickRate = "avg_click_rate"
    case avgOpenRate = "avg_open_rate"
    case ecommerceData = "ecommerce_data"
  }
}
