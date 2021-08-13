import Foundation

/** A collection of members who clicked on a specific link within a campaign. */

public struct ClickDetailMembers: Codable {
  /** An array of objects, each representing a member who clicked a specific link within a campaign. */
  public var members: [ClickDetailMember1]?
  /** The campaign id. */
  public var campaignId: String?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(members: [ClickDetailMember1]? = nil, campaignId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.members = members
    self.campaignId = campaignId
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case members
    case campaignId = "campaign_id"
    case totalItems = "total_items"
    case links = "_links"
  }
}
