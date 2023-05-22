import Foundation

import PrchModel
/** A summary of social activity for the campaign, tracked by EepURL. */
public struct EepurlActivityModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** The unique id for the campaign. */
  public var campaignId: String?

  public var clicks: ClickSummaryModel?

  /** The shortened link used for tracking. */
  public var eepurl: String?

  /** A summary of the top referrers for the campaign. */
  public var referrers: [ReferrerModel]?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public var twitter: TwitterStatsModel?

  public init(links: [ResourceLinkModel]? = nil, campaignId: String? = nil, clicks: ClickSummaryModel? = nil, eepurl: String? = nil, referrers: [ReferrerModel]? = nil, totalItems: Int? = nil, twitter: TwitterStatsModel? = nil) {
    self.links = links
    self.campaignId = campaignId
    self.clicks = clicks
    self.eepurl = eepurl
    self.referrers = referrers
    self.totalItems = totalItems
    self.twitter = twitter
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case campaignId = "campaign_id"
    case clicks
    case eepurl
    case referrers
    case totalItems = "total_items"
    case twitter
  }
}
