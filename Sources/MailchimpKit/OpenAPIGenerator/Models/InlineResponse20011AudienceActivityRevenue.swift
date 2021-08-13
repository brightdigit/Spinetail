import Foundation

public struct InlineResponse20011AudienceActivityRevenue: Codable {
  public var date: String?
  public var revenue: Decimal?

  public init(date: String? = nil, revenue: Decimal? = nil) {
    self.date = date
    self.revenue = revenue
  }
}
