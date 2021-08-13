import Foundation

/** General stats about different groups of an A/B Split campaign. Does not return information about Multivariate Campaigns. */

public struct ABSplitStats: Codable {
  public var a: CampaignA?
  public var b: CampaignB?

  public init(a: CampaignA? = nil, b: CampaignB? = nil) {
    self.a = a
    self.b = b
  }
}
