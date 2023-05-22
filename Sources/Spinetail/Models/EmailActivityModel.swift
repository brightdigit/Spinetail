import Foundation

import PrchModel
/** A list of member's subscriber activity in a specific campaign. */
public struct EmailActivityModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** The unique id for the sent campaign. */
  public var campaignId: String?

  /** An array of members that were sent the campaign. */
  public var emails: [EmailActivityModel]?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, campaignId: String? = nil, emails: [EmailActivityModel]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.campaignId = campaignId
    self.emails = emails
    self.totalItems = totalItems
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case campaignId = "campaign_id"
    case emails
    case totalItems = "total_items"
  }
}
