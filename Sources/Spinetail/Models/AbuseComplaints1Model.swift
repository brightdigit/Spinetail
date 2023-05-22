import Foundation

import PrchModel
/** A list of abuse complaints for a specific list. */
public struct AbuseComplaints1Model: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** An array of objects, each representing an abuse report resource. */
  public var abuseReports: [AbuseComplaint1Model]?

  /** The campaign id. */
  public var campaignId: String?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, abuseReports: [AbuseComplaint1Model]? = nil, campaignId: String? = nil, totalItems: Int? = nil) {
    self.links = links
    self.abuseReports = abuseReports
    self.campaignId = campaignId
    self.totalItems = totalItems
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case abuseReports = "abuse_reports"
    case campaignId = "campaign_id"
    case totalItems = "total_items"
  }
}
