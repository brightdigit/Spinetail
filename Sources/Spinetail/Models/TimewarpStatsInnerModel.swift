import Foundation

import PrchModel
public struct TimewarpStatsInnerModel: Codable, Equatable, Content {
  /** The number of bounces. */
  public var bounces: Int?

  /** The number of clicks. */
  public var clicks: Int?

  /** For campaigns sent with timewarp, the time zone group the member is apart of. */
  public var gmtOffset: Int?

  /** The date and time of the last click in ISO 8601 format. */
  public var lastClick: DateTime?

  /** The date and time of the last open in ISO 8601 format. */
  public var lastOpen: DateTime?

  /** The number of opens. */
  public var opens: Int?

  /** The number of unique clicks. */
  public var uniqueClicks: Int?

  /** The number of unique opens. */
  public var uniqueOpens: Int?

  public init(bounces: Int? = nil, clicks: Int? = nil, gmtOffset: Int? = nil, lastClick: DateTime? = nil, lastOpen: DateTime? = nil, opens: Int? = nil, uniqueClicks: Int? = nil, uniqueOpens: Int? = nil) {
    self.bounces = bounces
    self.clicks = clicks
    self.gmtOffset = gmtOffset
    self.lastClick = lastClick
    self.lastOpen = lastOpen
    self.opens = opens
    self.uniqueClicks = uniqueClicks
    self.uniqueOpens = uniqueOpens
  }

  public enum CodingKeys: String, CodingKey {
    case bounces
    case clicks
    case gmtOffset = "gmt_offset"
    case lastClick = "last_click"
    case lastOpen = "last_open"
    case opens
    case uniqueClicks = "unique_clicks"
    case uniqueOpens = "unique_opens"
  }
}
