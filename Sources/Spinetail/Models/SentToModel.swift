import Foundation

import PrchModel
/** A list of subscribers who were sent a specific campaign. */
public struct SentToModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** The campaign id. */
  public var campaignId: String?

  /** An array of objects, each representing a campaign recipient. */
  public var sentTo: [SentToModel]?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, campaignId: String? = nil, sentTo: [SentToModel]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.campaignId = campaignId
    self.sentTo = sentTo
    self.totalItems = totalItems
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case campaignId = "campaign_id"
    case sentTo = "sent_to"
    case totalItems = "total_items"
  }
}
