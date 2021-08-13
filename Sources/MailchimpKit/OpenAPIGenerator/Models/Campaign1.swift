import Foundation

/** A summary of an individual campaign&#x27;s settings and content. */

public struct Campaign1: Codable {
  public enum ModelType: String, Codable {
    case regular
    case plaintext
    case absplit
    case rss
    case variate
  }

  public enum Status: String, Codable {
    case save
    case paused
    case schedule
    case sending
    case sent
    case canceled
    case canceling
    case archived
  }

  public enum ContentType: String, Codable {
    case template
    case html
    case url
    case multichannel
  }

  /** A string that uniquely identifies this campaign. */
  public var _id: String?
  /** The ID used in the Mailchimp web application. View this campaign in your Mailchimp account at &#x60;https://{dc}.admin.mailchimp.com/campaigns/show/?id&#x3D;{web_id}&#x60;. */
  public var webId: Int?
  /** If this campaign is the child of another campaign, this identifies the parent campaign. For Example, for RSS or Automation children. */
  public var parentCampaignId: String?
  /** There are four types of [campaigns](https://mailchimp.com/help/getting-started-with-campaigns/) you can create in Mailchimp. A/B Split campaigns have been deprecated and variate campaigns should be used instead. */
  public var type: ModelType?
  /** The date and time the campaign was created in ISO 8601 format. */
  public var createTime: Date?
  /** The link to the campaign&#x27;s archive version in ISO 8601 format. */
  public var archiveUrl: String?
  /** The original link to the campaign&#x27;s archive version. */
  public var longArchiveUrl: String?
  /** The current status of the campaign. */
  public var status: Status?
  /** The total number of emails sent for this campaign. */
  public var emailsSent: Int?
  /** The date and time a campaign was sent. */
  public var sendTime: Date?
  /** How the campaign&#x27;s content is put together. */
  public var contentType: ContentType?
  /** Determines if the campaign needs its blocks refreshed by opening the web-based campaign editor. Deprecated and will always return false. */
  public var needsBlockRefresh: Bool?
  /** Determines if the campaign qualifies to be resent to non-openers. */
  public var resendable: Bool?
  public var recipients: List8?
  public var settings: CampaignSettings4?
  public var variateSettings: ABTestOptions2?
  public var tracking: CampaignTrackingOptions?
  public var rssOpts: RSSOptions3?
  public var abSplitOpts: ABTestingOptions?
  public var socialCard: CampaignSocialCard?
  public var reportSummary: CampaignReportSummary1?
  public var deliveryStatus: CampaignDeliveryStatus?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(_id: String? = nil, webId: Int? = nil, parentCampaignId: String? = nil, type: ModelType? = nil, createTime: Date? = nil, archiveUrl: String? = nil, longArchiveUrl: String? = nil, status: Status? = nil, emailsSent: Int? = nil, sendTime: Date? = nil, contentType: ContentType? = nil, needsBlockRefresh: Bool? = nil, resendable: Bool? = nil, recipients: List8? = nil, settings: CampaignSettings4? = nil, variateSettings: ABTestOptions2? = nil, tracking: CampaignTrackingOptions? = nil, rssOpts: RSSOptions3? = nil, abSplitOpts: ABTestingOptions? = nil, socialCard: CampaignSocialCard? = nil, reportSummary: CampaignReportSummary1? = nil, deliveryStatus: CampaignDeliveryStatus? = nil, links: [ResourceLink]? = nil) {
    self._id = _id
    self.webId = webId
    self.parentCampaignId = parentCampaignId
    self.type = type
    self.createTime = createTime
    self.archiveUrl = archiveUrl
    self.longArchiveUrl = longArchiveUrl
    self.status = status
    self.emailsSent = emailsSent
    self.sendTime = sendTime
    self.contentType = contentType
    self.needsBlockRefresh = needsBlockRefresh
    self.resendable = resendable
    self.recipients = recipients
    self.settings = settings
    self.variateSettings = variateSettings
    self.tracking = tracking
    self.rssOpts = rssOpts
    self.abSplitOpts = abSplitOpts
    self.socialCard = socialCard
    self.reportSummary = reportSummary
    self.deliveryStatus = deliveryStatus
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case webId = "web_id"
    case parentCampaignId = "parent_campaign_id"
    case type
    case createTime = "create_time"
    case archiveUrl = "archive_url"
    case longArchiveUrl = "long_archive_url"
    case status
    case emailsSent = "emails_sent"
    case sendTime = "send_time"
    case contentType = "content_type"
    case needsBlockRefresh = "needs_block_refresh"
    case resendable
    case recipients
    case settings
    case variateSettings = "variate_settings"
    case tracking
    case rssOpts = "rss_opts"
    case abSplitOpts = "ab_split_opts"
    case socialCard = "social_card"
    case reportSummary = "report_summary"
    case deliveryStatus = "delivery_status"
    case links = "_links"
  }
}
