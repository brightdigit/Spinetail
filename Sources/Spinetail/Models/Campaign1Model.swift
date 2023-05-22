import Foundation

import PrchModel
/** A summary of an individual campaign's settings and content. */
public struct Campaign1Model: Codable, Equatable, Content {
  /** There are four types of [campaigns](https://mailchimp.com/help/getting-started-with-campaigns/) you can create in Mailchimp. A/B Split campaigns have been deprecated and variate campaigns should be used instead. */
  public enum `Type`: String, Codable, Equatable, CaseIterable {
    case regular
    case plaintext
    case absplit
    case rss
    case variate
  }

  /** How the campaign's content is put together. The old drag and drop editor uses 'template' while the new editor uses 'multichannel'. Defaults to template. */
  public enum ContentType: String, Codable, Equatable, CaseIterable {
    case template
    case multichannel
  }

  /** There are four types of [campaigns](https://mailchimp.com/help/getting-started-with-campaigns/) you can create in Mailchimp. A/B Split campaigns have been deprecated and variate campaigns should be used instead. */
  public var type: `Type`

  /** How the campaign's content is put together. The old drag and drop editor uses 'template' while the new editor uses 'multichannel'. Defaults to template. */
  public var contentType: ContentType?

  public var recipients: List4Model?

  public var rssOpts: RSSOptions1Model?

  public var settings: CampaignSettings3Model?

  public var socialCard: CampaignSocialCardModel?

  public var tracking: CampaignTrackingOptions1Model?

  public var variateSettings: ABTestOptions1Model?

  public init(type: Type, contentType: ContentType? = nil, recipients: List4Model? = nil, rssOpts: RSSOptions1Model? = nil, settings: CampaignSettings3Model? = nil, socialCard: CampaignSocialCardModel? = nil, tracking: CampaignTrackingOptions1Model? = nil, variateSettings: ABTestOptions1Model? = nil) {
    self.type = type
    self.contentType = contentType
    self.recipients = recipients
    self.rssOpts = rssOpts
    self.settings = settings
    self.socialCard = socialCard
    self.tracking = tracking
    self.variateSettings = variateSettings
  }

  public enum CodingKeys: String, CodingKey {
    case type
    case contentType = "content_type"
    case recipients
    case rssOpts = "rss_opts"
    case settings
    case socialCard = "social_card"
    case tracking
    case variateSettings = "variate_settings"
  }
}
