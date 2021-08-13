import Foundation

public struct InlineResponse20011AudienceActivityImpressions: Codable {
  public var date: String?
  public var impressions: Int?

  public init(date: String? = nil, impressions: Int? = nil) {
    self.date = date
    self.impressions = impressions
  }
}
