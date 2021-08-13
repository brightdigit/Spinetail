import Foundation

/** A list of abuse complaints for a specific list. */

public struct AbuseComplaints1: Codable {
  /** An array of objects, each representing an abuse report resource. */
  public var abuseReports: [AbuseComplaint2]?
  /** The campaign id. */
  public var campaignId: String?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(abuseReports: [AbuseComplaint2]? = nil, campaignId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.abuseReports = abuseReports
    self.campaignId = campaignId
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case abuseReports = "abuse_reports"
    case campaignId = "campaign_id"
    case totalItems = "total_items"
    case links = "_links"
  }
}
