import Foundation

/** A single instance of a campaign referral. */

public struct Referrer: Codable {
  /** A referrer (truncated to 100 bytes). */
  public var referrer: String?
  /** The number of clicks a single referrer generated. */
  public var clicks: Int?
  /** The timestamp for the first click from this referrer. */
  public var firstClick: Date?
  /** The timestamp for the last click from this referrer. */
  public var lastClick: Date?

  public init(referrer: String? = nil, clicks: Int? = nil, firstClick: Date? = nil, lastClick: Date? = nil) {
    self.referrer = referrer
    self.clicks = clicks
    self.firstClick = firstClick
    self.lastClick = lastClick
  }

  public enum CodingKeys: String, CodingKey {
    case referrer
    case clicks
    case firstClick = "first_click"
    case lastClick = "last_click"
  }
}
