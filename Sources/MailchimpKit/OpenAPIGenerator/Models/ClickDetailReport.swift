import Foundation

/** A list of URLs and unique IDs included in HTML and plain-text versions of a campaign. */

public struct ClickDetailReport: Codable {
  /** An array of objects, each representing a specific URL contained in the campaign. */
  public var urlsClicked: [ClickDetailReport2]?
  /** The campaign id. */
  public var campaignId: String?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(urlsClicked: [ClickDetailReport2]? = nil, campaignId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.urlsClicked = urlsClicked
    self.campaignId = campaignId
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case urlsClicked = "urls_clicked"
    case campaignId = "campaign_id"
    case totalItems = "total_items"
    case links = "_links"
  }
}
