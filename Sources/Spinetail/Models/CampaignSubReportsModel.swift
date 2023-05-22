import Foundation

import PrchModel
/** A list of reports containing child campaigns for a specific campaign. */
public struct CampaignSubReportsModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** Unique identifier of the parent campaign */
  public var campaignId: String?

  /** An array of objects, each representing a report resource. */
  public var reports: [CampaignReportModel]?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, campaignId: String? = nil, reports: [CampaignReportModel]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.campaignId = campaignId
    self.reports = reports
    self.totalItems = totalItems
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case campaignId = "campaign_id"
    case reports
    case totalItems = "total_items"
  }
}
