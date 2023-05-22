import Foundation

import PrchModel
/** An array of campaigns. */
public struct GetCampaigns200ResponseModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** An array of campaigns. */
  public var campaigns: [CampaignModel]?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, campaigns: [CampaignModel]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.campaigns = campaigns
    self.totalItems = totalItems
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case campaigns
    case totalItems = "total_items"
  }
}
