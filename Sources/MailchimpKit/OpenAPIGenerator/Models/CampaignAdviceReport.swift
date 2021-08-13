import Foundation

/** A list of feedback based on a campaign&#x27;s statistics. */

public struct CampaignAdviceReport: Codable {
  /** An array of objects, each representing a point of campaign feedback. */
  public var advice: [CampaignAdvice]?
  /** The campaign id. */
  public var campaignId: String?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(advice: [CampaignAdvice]? = nil, campaignId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.advice = advice
    self.campaignId = campaignId
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case advice
    case campaignId = "campaign_id"
    case totalItems = "total_items"
    case links = "_links"
  }
}
