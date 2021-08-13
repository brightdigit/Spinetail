import Foundation

public struct InlineResponse20011AudienceActivity: Codable {
  public var clicks: [InlineResponse20011AudienceActivityClicks]?
  public var impressions: [InlineResponse20011AudienceActivityImpressions]?
  public var revenue: [InlineResponse20011AudienceActivityRevenue]?

  public init(clicks: [InlineResponse20011AudienceActivityClicks]? = nil, impressions: [InlineResponse20011AudienceActivityImpressions]? = nil, revenue: [InlineResponse20011AudienceActivityRevenue]? = nil) {
    self.clicks = clicks
    self.impressions = impressions
    self.revenue = revenue
  }
}
