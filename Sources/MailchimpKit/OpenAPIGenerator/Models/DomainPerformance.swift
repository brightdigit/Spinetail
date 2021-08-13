import Foundation

/** Statistics for the top-performing email domains in a campaign. */

public struct DomainPerformance: Codable {
  /** The top 5 email domains based on total delivered emails. */
  public var domains: [EmailDomain]?
  /** The total number of emails sent for the campaign. */
  public var totalSent: Int?
  /** The unique id for the campaign. */
  public var campaignId: String?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(domains: [EmailDomain]? = nil, totalSent: Int? = nil, campaignId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.domains = domains
    self.totalSent = totalSent
    self.campaignId = campaignId
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case domains
    case totalSent = "total_sent"
    case campaignId = "campaign_id"
    case totalItems = "total_items"
    case links = "_links"
  }
}
