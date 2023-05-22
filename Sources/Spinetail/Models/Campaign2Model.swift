import Foundation

import PrchModel
/** A summary of an individual campaign's settings and content. */
public struct Campaign2Model: Codable, Equatable, Content {
  public var settings: CampaignSettings4Model

  public var recipients: List5Model?

  public var rssOpts: RSSOptions2Model?

  public var socialCard: CampaignSocialCardModel?

  public var tracking: CampaignTrackingOptions1Model?

  public var variateSettings: ABTestOptions1Model?

  public init(settings: CampaignSettings4Model, recipients: List5Model? = nil, rssOpts: RSSOptions2Model? = nil, socialCard: CampaignSocialCardModel? = nil, tracking: CampaignTrackingOptions1Model? = nil, variateSettings: ABTestOptions1Model? = nil) {
    self.settings = settings
    self.recipients = recipients
    self.rssOpts = rssOpts
    self.socialCard = socialCard
    self.tracking = tracking
    self.variateSettings = variateSettings
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case settings
    case recipients
    case rssOpts = "rss_opts"
    case socialCard = "social_card"
    case tracking
    case variateSettings = "variate_settings"
  }
}
