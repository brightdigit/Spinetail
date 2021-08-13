import Foundation

/** A summary of the click-throughs on the campaign&#x27;s URL. */

public struct ClickSummary: Codable {
  /** The total number of clicks to the campaign&#x27;s URL. */
  public var clicks: Int?
  /** The timestamp for the first click to the URL. */
  public var firstClick: Date?
  /** The timestamp for the last click to the URL. */
  public var lastClick: Date?
  /** A summary of the top click locations. */
  public var locations: [Location2]?

  public init(clicks: Int? = nil, firstClick: Date? = nil, lastClick: Date? = nil, locations: [Location2]? = nil) {
    self.clicks = clicks
    self.firstClick = firstClick
    self.lastClick = lastClick
    self.locations = locations
  }

  public enum CodingKeys: String, CodingKey {
    case clicks
    case firstClick = "first_click"
    case lastClick = "last_click"
    case locations
  }
}
