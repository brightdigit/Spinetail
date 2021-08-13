import Foundation

/** A list of subscribers who were sent a specific campaign. */

public struct SentTo: Codable {
  /** An array of objects, each representing a campaign recipient. */
  public var sentTo: [SentTo1]?
  /** The campaign id. */
  public var campaignId: String?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(sentTo: [SentTo1]? = nil, campaignId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.sentTo = sentTo
    self.campaignId = campaignId
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case sentTo = "sent_to"
    case campaignId = "campaign_id"
    case totalItems = "total_items"
    case links = "_links"
  }
}
