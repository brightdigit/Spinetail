import Foundation

import PrchModel
/** The clicks and visits data from the last five weeks. */
public struct WeeklyClicksAndVisitsDataModel: Codable, Equatable, Content {
  /** The total number of clicks in a week. */
  public var clicks: [Clicks1Inner1Model]?

  public var uniqueVisits: [UniqueVisitsInnerModel]?

  /** The total number of visits in a week. */
  public var visits: [VisitsInner1Model]?

  public init(clicks: [Clicks1Inner1Model]? = nil, uniqueVisits: [UniqueVisitsInnerModel]? = nil, visits: [VisitsInner1Model]? = nil) {
    self.clicks = clicks
    self.uniqueVisits = uniqueVisits
    self.visits = visits
  }

  public enum CodingKeys: String, CodingKey {
    case clicks
    case uniqueVisits = "unique_visits"
    case visits
  }
}
