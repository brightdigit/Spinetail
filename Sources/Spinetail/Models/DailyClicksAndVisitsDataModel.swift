import Foundation

import PrchModel
/** The clicks and visits data from the last seven days. */
public struct DailyClicksAndVisitsDataModel: Codable, Equatable, Content {
  public var clicks: [Clicks1InnerModel]?

  public var uniqueVisits: [UniqueVisitsInnerModel]?

  public var visits: [VisitsInnerModel]?

  public init(clicks: [Clicks1InnerModel]? = nil, uniqueVisits: [UniqueVisitsInnerModel]? = nil, visits: [VisitsInnerModel]? = nil) {
    self.clicks = clicks
    self.uniqueVisits = uniqueVisits
    self.visits = visits
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case clicks
    case uniqueVisits = "unique_visits"
    case visits
  }
}
