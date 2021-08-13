import Foundation

public struct DailyClicksAndVisitsDataUniqueVisits: Codable {
  public var date: String?
  public var val: Int?

  public init(date: String? = nil, val: Int? = nil) {
    self.date = date
    self.val = val
  }
}
