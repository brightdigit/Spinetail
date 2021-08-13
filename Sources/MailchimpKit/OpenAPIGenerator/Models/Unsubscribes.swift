import Foundation

/** A list of members who have unsubscribed from a specific campaign. */

public struct Unsubscribes: Codable {
  /** An array of objects, each representing a member who unsubscribed from a campaign. */
  public var unsubscribes: [Unsubscribes2]?
  /** The campaign id. */
  public var campaignId: String?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(unsubscribes: [Unsubscribes2]? = nil, campaignId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.unsubscribes = unsubscribes
    self.campaignId = campaignId
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case unsubscribes
    case campaignId = "campaign_id"
    case totalItems = "total_items"
    case links = "_links"
  }
}
