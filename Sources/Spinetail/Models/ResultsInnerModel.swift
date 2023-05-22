import Foundation

import PrchModel
public struct ResultsInnerModel: Codable, Equatable, Content {
  public var campaign: CampaignModel?

  public var snippet: String?

  public init(campaign: CampaignModel? = nil, snippet: String? = nil) {
    self.campaign = campaign
    self.snippet = snippet
  }

  public enum CodingKeys: String, CodingKey {
    case campaign
    case snippet
  }
}
