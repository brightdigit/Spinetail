import Foundation

/** A detailed report of any campaign emails that were opened by a list member. */

public struct OpenDetailReport: Codable {
  /** An array of objects, each representing a list member who opened a campaign email. Each members object will contain information about the number of total opens by a single member, as well as timestamps for each open event. */
  public var members: [OpenActivity1]?
  /** The campaign id. */
  public var campaignId: String?
  /** The total number of opens matching the query regardless of pagination. */
  public var totalOpens: Int?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(members: [OpenActivity1]? = nil, campaignId: String? = nil, totalOpens: Int? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.members = members
    self.campaignId = campaignId
    self.totalOpens = totalOpens
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case members
    case campaignId = "campaign_id"
    case totalOpens = "total_opens"
    case totalItems = "total_items"
    case links = "_links"
  }
}
