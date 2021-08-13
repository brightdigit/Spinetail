import Foundation

/** A summary of an individual campaign&#x27;s settings and content. */

public struct Campaign: Codable {
  public enum ModelType: String, Codable {
    case regular
    case plaintext
    case absplit
    case rss
    case variate
  }

  public enum ContentType: String, Codable {
    case template
    case multichannel
  }

  /** There are four types of [campaigns](https://mailchimp.com/help/getting-started-with-campaigns/) you can create in Mailchimp. A/B Split campaigns have been deprecated and variate campaigns should be used instead. */
  public var type: ModelType
  public var recipients: List1?
  public var settings: CampaignSettings1?
  public var variateSettings: ABTestOptions?
  public var tracking: CampaignTrackingOptions?
  public var rssOpts: RSSOptions?
  public var socialCard: CampaignSocialCard?
  /** How the campaign&#x27;s content is put together. The old drag and drop editor uses &#x27;template&#x27; while the new editor uses &#x27;multichannel&#x27;. Defaults to template. */
  public var contentType: ContentType?

  public init(type: ModelType, recipients: List1? = nil, settings: CampaignSettings1? = nil, variateSettings: ABTestOptions? = nil, tracking: CampaignTrackingOptions? = nil, rssOpts: RSSOptions? = nil, socialCard: CampaignSocialCard? = nil, contentType: ContentType? = nil) {
    self.type = type
    self.recipients = recipients
    self.settings = settings
    self.variateSettings = variateSettings
    self.tracking = tracking
    self.rssOpts = rssOpts
    self.socialCard = socialCard
    self.contentType = contentType
  }

  public enum CodingKeys: String, CodingKey {
    case type
    case recipients
    case settings
    case variateSettings = "variate_settings"
    case tracking
    case rssOpts = "rss_opts"
    case socialCard = "social_card"
    case contentType = "content_type"
  }
}
