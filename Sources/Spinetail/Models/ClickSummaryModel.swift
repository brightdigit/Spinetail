import Foundation

import PrchModel
/** A summary of the click-throughs on the campaign's URL. */
public struct ClickSummaryModel: Codable, Equatable, Content {
  /** The total number of clicks to the campaign's URL. */
  public var clicks: Int?

  /** The timestamp for the first click to the URL. */
  public var firstClick: DateTime?

  /** The timestamp for the last click to the URL. */
  public var lastClick: DateTime?

  /** A summary of the top click locations. */
  public var locations: [Location3Model]?

  public init(clicks: Int? = nil, firstClick: DateTime? = nil, lastClick: DateTime? = nil, locations: [Location3Model]? = nil) {
    self.clicks = clicks
    self.firstClick = firstClick
    self.lastClick = lastClick
    self.locations = locations
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case clicks
    case firstClick = "first_click"
    case lastClick = "last_click"
    case locations
  }
}
