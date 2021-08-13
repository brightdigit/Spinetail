import Foundation

public struct CampaignReports1Timewarp: Codable {
  /** For campaigns sent with timewarp, the time zone group the member is apart of. */
  public var gmtOffset: Int?
  /** The number of opens. */
  public var opens: Int?
  /** The date and time of the last open in ISO 8601 format. */
  public var lastOpen: Date?
  /** The number of unique opens. */
  public var uniqueOpens: Int?
  /** The number of clicks. */
  public var clicks: Int?
  /** The date and time of the last click in ISO 8601 format. */
  public var lastClick: Date?
  /** The number of unique clicks. */
  public var uniqueClicks: Int?
  /** The number of bounces. */
  public var bounces: Int?

  public init(gmtOffset: Int? = nil, opens: Int? = nil, lastOpen: Date? = nil, uniqueOpens: Int? = nil, clicks: Int? = nil, lastClick: Date? = nil, uniqueClicks: Int? = nil, bounces: Int? = nil) {
    self.gmtOffset = gmtOffset
    self.opens = opens
    self.lastOpen = lastOpen
    self.uniqueOpens = uniqueOpens
    self.clicks = clicks
    self.lastClick = lastClick
    self.uniqueClicks = uniqueClicks
    self.bounces = bounces
  }

  public enum CodingKeys: String, CodingKey {
    case gmtOffset = "gmt_offset"
    case opens
    case lastOpen = "last_open"
    case uniqueOpens = "unique_opens"
    case clicks
    case lastClick = "last_click"
    case uniqueClicks = "unique_clicks"
    case bounces
  }
}
