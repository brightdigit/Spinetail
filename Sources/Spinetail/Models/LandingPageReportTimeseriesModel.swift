import Foundation

import PrchModel
public struct LandingPageReportTimeseriesModel: Codable, Equatable, Content {
  public var dailyStats: DailyClicksAndVisitsDataModel?

  public var weeklyStats: WeeklyClicksAndVisitsDataModel?

  public init(dailyStats: DailyClicksAndVisitsDataModel? = nil, weeklyStats: WeeklyClicksAndVisitsDataModel? = nil) {
    self.dailyStats = dailyStats
    self.weeklyStats = weeklyStats
  }

  public enum CodingKeys: String, CodingKey {
    case dailyStats = "daily_stats"
    case weeklyStats = "weekly_stats"
  }
}
