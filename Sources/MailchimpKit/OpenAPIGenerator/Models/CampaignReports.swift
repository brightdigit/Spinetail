import Foundation

/** A summary of the comment feedback for a specific campaign. */

public struct CampaignReports: Codable {
  /** A collection of feedback items for a campaign. */
  public var feedback: [CampaignFeedback3]?
  /** The unique id for the campaign. */
  public var campaignId: String?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(feedback: [CampaignFeedback3]? = nil, campaignId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.feedback = feedback
    self.campaignId = campaignId
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case feedback
    case campaignId = "campaign_id"
    case totalItems = "total_items"
    case links = "_links"
  }
}
