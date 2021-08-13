import Foundation

/** A list of reports containing child campaigns for a specific campaign. */

public struct CampaignSubReports: Codable {
  /** An array of objects, each representing a report resource. */
  public var reports: [CampaignReport1]?
  /** Unique identifier of the parent campaign */
  public var campaignId: String?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(reports: [CampaignReport1]? = nil, campaignId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.reports = reports
    self.campaignId = campaignId
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case reports
    case campaignId = "campaign_id"
    case totalItems = "total_items"
    case links = "_links"
  }
}
