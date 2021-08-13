import Foundation

/** A summary of an individual campaign&#x27;s settings and content. */

public struct Campaign2: Codable {
  public var recipients: List2?
  public var settings: CampaignSettings2
  public var variateSettings: ABTestOptions?
  public var tracking: CampaignTrackingOptions?
  public var rssOpts: RSSOptions1?
  public var socialCard: CampaignSocialCard?

  public init(recipients: List2? = nil, settings: CampaignSettings2, variateSettings: ABTestOptions? = nil, tracking: CampaignTrackingOptions? = nil, rssOpts: RSSOptions1? = nil, socialCard: CampaignSocialCard? = nil) {
    self.recipients = recipients
    self.settings = settings
    self.variateSettings = variateSettings
    self.tracking = tracking
    self.rssOpts = rssOpts
    self.socialCard = socialCard
  }

  public enum CodingKeys: String, CodingKey {
    case recipients
    case settings
    case variateSettings = "variate_settings"
    case tracking
    case rssOpts = "rss_opts"
    case socialCard = "social_card"
  }
}
