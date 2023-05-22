import Foundation

import PrchModel
/** A list of members who have unsubscribed from a specific campaign. */
public struct UnsubscribesModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** The campaign id. */
  public var campaignId: String?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  /** An array of objects, each representing a member who unsubscribed from a campaign. */
  public var unsubscribes: [UnsubscribesModel]?

  public init(links: [ResourceLinkModel]? = nil, campaignId: String? = nil, totalItems: Int? = nil, unsubscribes: [UnsubscribesModel]? = nil) {
    self.links = links
    self.campaignId = campaignId
    self.totalItems = totalItems
    self.unsubscribes = unsubscribes
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case campaignId = "campaign_id"
    case totalItems = "total_items"
    case unsubscribes
  }
}
