import Foundation

import PrchModel
/** Statistics for the top-performing email domains in a campaign. */
public struct DomainPerformanceModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** The unique id for the campaign. */
  public var campaignId: String?

  /** The top 5 email domains based on total delivered emails. */
  public var domains: [EmailDomainModel]?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  /** The total number of emails sent for the campaign. */
  public var totalSent: Int?

  public init(links: [ResourceLinkModel]? = nil, campaignId: String? = nil, domains: [EmailDomainModel]? = nil, totalItems: Int? = nil, totalSent: Int? = nil) {
    self.links = links
    self.campaignId = campaignId
    self.domains = domains
    self.totalItems = totalItems
    self.totalSent = totalSent
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case campaignId = "campaign_id"
    case domains
    case totalItems = "total_items"
    case totalSent = "total_sent"
  }
}
