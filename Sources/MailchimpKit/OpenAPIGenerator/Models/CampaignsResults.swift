import Foundation

public struct CampaignsResults: Codable {
  public var campaign: Campaign4?
  public var snippet: String?

  public init(campaign: Campaign4? = nil, snippet: String? = nil) {
    self.campaign = campaign
    self.snippet = snippet
  }
}
