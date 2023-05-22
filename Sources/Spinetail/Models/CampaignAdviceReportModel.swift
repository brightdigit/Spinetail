import Foundation

import PrchModel
/** A list of feedback based on a campaign's statistics. */
public struct CampaignAdviceReportModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** An array of objects, each representing a point of campaign feedback. */
  public var advice: [CampaignAdviceModel]?

  /** The campaign id. */
  public var campaignId: String?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, advice: [CampaignAdviceModel]? = nil, campaignId: String? = nil, totalItems: Int? = nil) {
    self.links = links
    self.advice = advice
    self.campaignId = campaignId
    self.totalItems = totalItems
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case advice
    case campaignId = "campaign_id"
    case totalItems = "total_items"
  }
}
