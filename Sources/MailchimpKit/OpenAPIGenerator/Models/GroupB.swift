import Foundation

/** Stats for Group B. */

public struct GroupB: Codable {
  /** The total number of clicks for Group B. */
  public var totalClicksB: Int?
  /** The percentage of total clicks for Group B. */
  public var clickPercentageB: Decimal?
  /** The number of unique clicks for Group B. */
  public var uniqueClicksB: Int?
  /** The percentage of unique clicks for Group B. */
  public var uniqueClickPercentageB: Decimal?

  public init(totalClicksB: Int? = nil, clickPercentageB: Decimal? = nil, uniqueClicksB: Int? = nil, uniqueClickPercentageB: Decimal? = nil) {
    self.totalClicksB = totalClicksB
    self.clickPercentageB = clickPercentageB
    self.uniqueClicksB = uniqueClicksB
    self.uniqueClickPercentageB = uniqueClickPercentageB
  }

  public enum CodingKeys: String, CodingKey {
    case totalClicksB = "total_clicks_b"
    case clickPercentageB = "click_percentage_b"
    case uniqueClicksB = "unique_clicks_b"
    case uniqueClickPercentageB = "unique_click_percentage_b"
  }
}
