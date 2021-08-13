import Foundation

/** Stats for Group A. */

public struct GroupA: Codable {
  /** The total number of clicks for Group A. */
  public var totalClicksA: Int?
  /** The percentage of total clicks for Group A. */
  public var clickPercentageA: Decimal?
  /** The number of unique clicks for Group A. */
  public var uniqueClicksA: Int?
  /** The percentage of unique clicks for Group A. */
  public var uniqueClickPercentageA: Decimal?

  public init(totalClicksA: Int? = nil, clickPercentageA: Decimal? = nil, uniqueClicksA: Int? = nil, uniqueClickPercentageA: Decimal? = nil) {
    self.totalClicksA = totalClicksA
    self.clickPercentageA = clickPercentageA
    self.uniqueClicksA = uniqueClicksA
    self.uniqueClickPercentageA = uniqueClickPercentageA
  }

  public enum CodingKeys: String, CodingKey {
    case totalClicksA = "total_clicks_a"
    case clickPercentageA = "click_percentage_a"
    case uniqueClicksA = "unique_clicks_a"
    case uniqueClickPercentageA = "unique_click_percentage_a"
  }
}
