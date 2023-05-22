import Foundation

import PrchModel
/** General stats about different groups of an A/B Split campaign. Does not return information about Multivariate Campaigns. */
public struct ABSplitStatsModel: Codable, Equatable, Content {
  public var a: CampaignAModel?

  public var b: CampaignBModel?

  public init(a: CampaignAModel? = nil, b: CampaignBModel? = nil) {
    self.a = a
    self.b = b
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case a
    case b
  }
}
