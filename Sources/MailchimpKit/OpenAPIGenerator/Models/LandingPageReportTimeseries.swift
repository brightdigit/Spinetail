import Foundation

public struct LandingPageReportTimeseries: Codable {
  public var dailyStats: DailyClicksAndVisitsData?
  public var weeklyStats: WeeklyClicksAndVisitsData?

  public init(dailyStats: DailyClicksAndVisitsData? = nil, weeklyStats: WeeklyClicksAndVisitsData? = nil) {
    self.dailyStats = dailyStats
    self.weeklyStats = weeklyStats
  }

  public enum CodingKeys: String, CodingKey {
    case dailyStats = "daily_stats"
    case weeklyStats = "weekly_stats"
  }
}
