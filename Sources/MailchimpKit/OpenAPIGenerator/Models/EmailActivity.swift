import Foundation

/** A list of member&#x27;s subscriber activity in a specific campaign. */

public struct EmailActivity: Codable {
  /** An array of members that were sent the campaign. */
  public var emails: [EmailActivity2]?
  /** The unique id for the sent campaign. */
  public var campaignId: String?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(emails: [EmailActivity2]? = nil, campaignId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.emails = emails
    self.campaignId = campaignId
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case emails
    case campaignId = "campaign_id"
    case totalItems = "total_items"
    case links = "_links"
  }
}
