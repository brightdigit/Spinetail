import Foundation

import PrchModel
/** A single instance of a campaign referral. */
public struct ReferrerModel: Codable, Equatable, Content {
  /** The number of clicks a single referrer generated. */
  public var clicks: Int?

  /** The timestamp for the first click from this referrer. */
  public var firstClick: DateTime?

  /** The timestamp for the last click from this referrer. */
  public var lastClick: DateTime?

  /** A referrer (truncated to 100 bytes). */
  public var referrer: String?

  public init(clicks: Int? = nil, firstClick: DateTime? = nil, lastClick: DateTime? = nil, referrer: String? = nil) {
    self.clicks = clicks
    self.firstClick = firstClick
    self.lastClick = lastClick
    self.referrer = referrer
  }

  public enum CodingKeys: String, CodingKey {
    case clicks
    case firstClick = "first_click"
    case lastClick = "last_click"
    case referrer
  }
}
