import Foundation

import PrchModel
/** A collection of members who clicked on a specific link within a campaign. */
public struct ClickDetailMembersModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** The campaign id. */
  public var campaignId: String?

  /** An array of objects, each representing a member who clicked a specific link within a campaign. */
  public var members: [ClickDetailMemberModel]?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, campaignId: String? = nil, members: [ClickDetailMemberModel]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.campaignId = campaignId
    self.members = members
    self.totalItems = totalItems
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case campaignId = "campaign_id"
    case members
    case totalItems = "total_items"
  }
}
