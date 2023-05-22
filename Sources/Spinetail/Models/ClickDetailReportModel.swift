import Foundation

import PrchModel
/** A list of URLs and unique IDs included in HTML and plain-text versions of a campaign. */
public struct ClickDetailReportModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** The campaign id. */
  public var campaignId: String?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  /** An array of objects, each representing a specific URL contained in the campaign. */
  public var urlsClicked: [ClickDetailReportModel]?

  public init(links: [ResourceLinkModel]? = nil, campaignId: String? = nil, totalItems: Int? = nil, urlsClicked: [ClickDetailReportModel]? = nil) {
    self.links = links
    self.campaignId = campaignId
    self.totalItems = totalItems
    self.urlsClicked = urlsClicked
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case campaignId = "campaign_id"
    case totalItems = "total_items"
    case urlsClicked = "urls_clicked"
  }
}
