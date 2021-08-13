import Foundation

/** The clicks and visits data from the last five weeks. */

public struct WeeklyClicksAndVisitsData: Codable {
  /** The total number of clicks in a week. */
  public var clicks: [WeeklyClicksAndVisitsDataClicks]?
  /** The total number of visits in a week. */
  public var visits: [WeeklyClicksAndVisitsDataVisits]?
  public var uniqueVisits: [DailyClicksAndVisitsDataUniqueVisits]?

  public init(clicks: [WeeklyClicksAndVisitsDataClicks]? = nil, visits: [WeeklyClicksAndVisitsDataVisits]? = nil, uniqueVisits: [DailyClicksAndVisitsDataUniqueVisits]? = nil) {
    self.clicks = clicks
    self.visits = visits
    self.uniqueVisits = uniqueVisits
  }

  public enum CodingKeys: String, CodingKey {
    case clicks
    case visits
    case uniqueVisits = "unique_visits"
  }
}
