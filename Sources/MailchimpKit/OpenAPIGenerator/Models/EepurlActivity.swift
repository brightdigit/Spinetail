import Foundation

/** A summary of social activity for the campaign, tracked by EepURL. */

public struct EepurlActivity: Codable {
  public var twitter: TwitterStats?
  public var clicks: ClickSummary?
  /** A summary of the top referrers for the campaign. */
  public var referrers: [Referrer]?
  /** The shortened link used for tracking. */
  public var eepurl: String?
  /** The unique id for the campaign. */
  public var campaignId: String?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(twitter: TwitterStats? = nil, clicks: ClickSummary? = nil, referrers: [Referrer]? = nil, eepurl: String? = nil, campaignId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.twitter = twitter
    self.clicks = clicks
    self.referrers = referrers
    self.eepurl = eepurl
    self.campaignId = campaignId
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case twitter
    case clicks
    case referrers
    case eepurl
    case campaignId = "campaign_id"
    case totalItems = "total_items"
    case links = "_links"
  }
}
