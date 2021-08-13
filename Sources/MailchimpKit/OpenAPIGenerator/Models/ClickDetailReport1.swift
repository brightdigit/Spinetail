import Foundation

/** A report of links clicked in a specific campaign. */

public struct ClickDetailReport1: Codable {
  /** The unique id for the link. */
  public var _id: String?
  /** The URL for the link in the campaign. */
  public var url: String?
  /** The number of total clicks for a link. */
  public var totalClicks: Int?
  /** The percentage of total clicks a link generated for a campaign. */
  public var clickPercentage: Decimal?
  /** Number of unique clicks for a link. */
  public var uniqueClicks: Int?
  /** The percentage of unique clicks a link generated for a campaign. */
  public var uniqueClickPercentage: Decimal?
  /** The date and time for the last recorded click for a link in ISO 8601 format. */
  public var lastClick: Date?
  public var abSplit: ABSplit?
  /** The campaign id. */
  public var campaignId: String?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(_id: String? = nil, url: String? = nil, totalClicks: Int? = nil, clickPercentage: Decimal? = nil, uniqueClicks: Int? = nil, uniqueClickPercentage: Decimal? = nil, lastClick: Date? = nil, abSplit: ABSplit? = nil, campaignId: String? = nil, links: [ResourceLink]? = nil) {
    self._id = _id
    self.url = url
    self.totalClicks = totalClicks
    self.clickPercentage = clickPercentage
    self.uniqueClicks = uniqueClicks
    self.uniqueClickPercentage = uniqueClickPercentage
    self.lastClick = lastClick
    self.abSplit = abSplit
    self.campaignId = campaignId
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case url
    case totalClicks = "total_clicks"
    case clickPercentage = "click_percentage"
    case uniqueClicks = "unique_clicks"
    case uniqueClickPercentage = "unique_click_percentage"
    case lastClick = "last_click"
    case abSplit = "ab_split"
    case campaignId = "campaign_id"
    case links = "_links"
  }
}
