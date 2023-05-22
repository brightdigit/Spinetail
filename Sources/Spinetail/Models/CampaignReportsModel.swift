import Foundation

import PrchModel
/** A summary of the comment feedback for a specific campaign. */
public struct CampaignReportsModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** The unique id for the campaign. */
  public var campaignId: String?

  /** A collection of feedback items for a campaign. */
  public var feedback: [CampaignFeedbackModel]?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, campaignId: String? = nil, feedback: [CampaignFeedbackModel]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.campaignId = campaignId
    self.feedback = feedback
    self.totalItems = totalItems
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case campaignId = "campaign_id"
    case feedback
    case totalItems = "total_items"
  }
}
