import Foundation

public struct InlineResponse20011AudienceActivityClicks: Codable {
  public var date: String?
  public var clicks: Int?

  public init(date: String? = nil, clicks: Int? = nil) {
    self.date = date
    self.clicks = clicks
  }
}
