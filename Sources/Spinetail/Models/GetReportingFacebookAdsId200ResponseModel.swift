import Foundation

import PrchModel
public struct GetReportingFacebookAdsId200ResponseModel: Codable, Equatable, Content {
  /** Campaign, Ad, or Page status */
  public enum AutomationsAutomationsStatus: String, Codable, Equatable, CaseIterable {
    case save
    case paused
    case schedule
    case sending
    case sent
    case canceled
    case canceling
    case active
    case disconnected
    case somepaused
    case draft
    case completed
    case partialRejected
    case pending
    case rejected
    case published
    case unpublished
  }

  /** Supported Campaign, Ad, Page type */
  public enum Automations`Type`: String, Codable, Equatable, CaseIterable {
    case regular
    case plaintext
    case rss
    case reconfirm
    case variate
    case absplit
    case automation
    case facebook
    case google
    case autoresponder
    case transactional
    case page
    case website
    case survey
  }

  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  public var audience: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2AudienceModel?

  public var audienceActivity: GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfAudienceActivityModel?

  public var budget: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2BudgetModel?

  public var canceledAt: DateTime?

  public var channel: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2ChannelModel?

  public var createTime: DateTime?

  public var emailSourceName: String?

  public var endTime: DateTime?

  public var hasSegment: Bool?

  /** Unique ID of an Outreach */
  public var id: String?

  /** Title or name of an Outreach */
  public var name: String?

  public var needsAttention: Bool?

  public var pausedAt: DateTime?

  public var publishedTime: DateTime?

  public var recipients: List10Model?

  public var reportSummary: GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryModel?

  /** Outreach report availability */
  public var showReport: Bool?

  public var startTime: DateTime?

  /** Campaign, Ad, or Page status */
  public var status: Status?

  /** The URL of the thumbnail for this outreach */
  public var thumbnail: String?

  /** Supported Campaign, Ad, Page type */
  public var type: `Type`?

  public var updatedAt: DateTime?

  public var wasCanceledByFacebook: Bool?

  /** Web ID */
  public var webId: Int?

  public init(links: [ResourceLinkModel]? = nil, audience: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2AudienceModel? = nil, audienceActivity: GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfAudienceActivityModel? = nil, budget: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2BudgetModel? = nil, canceledAt: DateTime? = nil, channel: GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2ChannelModel? = nil, createTime: DateTime? = nil, emailSourceName: String? = nil, endTime: DateTime? = nil, hasSegment: Bool? = nil, id: String? = nil, name: String? = nil, needsAttention: Bool? = nil, pausedAt: DateTime? = nil, publishedTime: DateTime? = nil, recipients: List10Model? = nil, reportSummary: GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryModel? = nil, showReport: Bool? = nil, startTime: DateTime? = nil, status: Status? = nil, thumbnail: String? = nil, type: Type? = nil, updatedAt: DateTime? = nil, wasCanceledByFacebook: Bool? = nil, webId: Int? = nil) {
    self.links = links
    self.audience = audience
    self.audienceActivity = audienceActivity
    self.budget = budget
    self.canceledAt = canceledAt
    self.channel = channel
    self.createTime = createTime
    self.emailSourceName = emailSourceName
    self.endTime = endTime
    self.hasSegment = hasSegment
    self.id = id
    self.name = name
    self.needsAttention = needsAttention
    self.pausedAt = pausedAt
    self.publishedTime = publishedTime
    self.recipients = recipients
    self.reportSummary = reportSummary
    self.showReport = showReport
    self.startTime = startTime
    self.status = status
    self.thumbnail = thumbnail
    self.type = type
    self.updatedAt = updatedAt
    self.wasCanceledByFacebook = wasCanceledByFacebook
    self.webId = webId
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case audience
    case audienceActivity = "audience_activity"
    case budget
    case canceledAt = "canceled_at"
    case channel
    case createTime = "create_time"
    case emailSourceName = "email_source_name"
    case endTime = "end_time"
    case hasSegment = "has_segment"
    case id
    case name
    case needsAttention = "needs_attention"
    case pausedAt = "paused_at"
    case publishedTime = "published_time"
    case recipients
    case reportSummary = "report_summary"
    case showReport = "show_report"
    case startTime = "start_time"
    case status
    case thumbnail
    case type
    case updatedAt = "updated_at"
    case wasCanceledByFacebook = "was_canceled_by_facebook"
    case webId = "web_id"
  }
}
