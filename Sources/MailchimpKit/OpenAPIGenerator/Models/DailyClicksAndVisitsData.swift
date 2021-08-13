import Foundation

/** The clicks and visits data from the last seven days. */

public struct DailyClicksAndVisitsData: Codable {
  public var clicks: [DailyClicksAndVisitsDataClicks]?
  public var visits: [DailyClicksAndVisitsDataVisits]?
  public var uniqueVisits: [DailyClicksAndVisitsDataUniqueVisits]?

  public init(clicks: [DailyClicksAndVisitsDataClicks]? = nil, visits: [DailyClicksAndVisitsDataVisits]? = nil, uniqueVisits: [DailyClicksAndVisitsDataUniqueVisits]? = nil) {
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
