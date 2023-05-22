import Foundation

import PrchModel
/** A detailed report of any campaign emails that were opened by a list member. */
public struct OpenDetailReportModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** The campaign id. */
  public var campaignId: String?

  /** An array of objects, each representing a list member who opened a campaign email. Each members object will contain information about the number of total opens by a single member, as well as timestamps for each open event. */
  public var members: [OpenActivityModel]?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  /** The total number of opens matching the query regardless of pagination. */
  public var totalOpens: Int?

  public init(links: [ResourceLinkModel]? = nil, campaignId: String? = nil, members: [OpenActivityModel]? = nil, totalItems: Int? = nil, totalOpens: Int? = nil) {
    self.links = links
    self.campaignId = campaignId
    self.members = members
    self.totalItems = totalItems
    self.totalOpens = totalOpens
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case campaignId = "campaign_id"
    case members
    case totalItems = "total_items"
    case totalOpens = "total_opens"
  }
}
