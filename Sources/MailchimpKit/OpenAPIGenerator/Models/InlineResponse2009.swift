import Foundation

public struct InlineResponse2009: Codable {
  public enum Status: String, Codable {
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
    case partialrejected = "partialRejected"
    case pending
    case rejected
    case published
    case unpublished
  }

  public enum ModelType: String, Codable {
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
  public var links: [ResourceLink]?
  public var audience: InlineResponse2009Audience?
  public var budget: InlineResponse2009Budget?
  public var canceledAt: Date?
  public var channel: InlineResponse2009Channel?
  public var content: InlineResponse2009Content?
  public var createTime: Date?
  public var emailSourceName: String?
  public var endTime: Date?
  public var feedback: InlineResponse2009Feedback?
  /** Check if this ad has audience setup */
  public var hasAudience: Bool?
  /** Check if this ad has content */
  public var hasContent: Bool?
  public var hasSegment: Bool?
  /** Unique ID of an Outreach */
  public var _id: String?
  /** Check if this ad is connected to a facebook page */
  public var isConnected: Bool?
  /** Title or name of an Outreach */
  public var name: String?
  public var needsAttention: Bool?
  public var pausedAt: Date?
  public var publishedTime: Date?
  public var recipients: List10?
  public var reportSummary: InlineResponse2009ReportSummary?
  /** Outreach report availability */
  public var showReport: Bool?
  public var site: InlineResponse2009Site?
  public var startTime: Date?
  /** Campaign, Ad, or Page status */
  public var status: Status?
  /** The URL of the thumbnail for this outreach */
  public var thumbnail: String?
  /** Supported Campaign, Ad, Page type */
  public var type: ModelType?
  public var updatedAt: Date?
  public var wasCanceledByFacebook: Bool?
  /** Web ID */
  public var webId: Int?

  public init(links: [ResourceLink]? = nil, audience: InlineResponse2009Audience? = nil, budget: InlineResponse2009Budget? = nil, canceledAt: Date? = nil, channel: InlineResponse2009Channel? = nil, content: InlineResponse2009Content? = nil, createTime: Date? = nil, emailSourceName: String? = nil, endTime: Date? = nil, feedback: InlineResponse2009Feedback? = nil, hasAudience: Bool? = nil, hasContent: Bool? = nil, hasSegment: Bool? = nil, _id: String? = nil, isConnected: Bool? = nil, name: String? = nil, needsAttention: Bool? = nil, pausedAt: Date? = nil, publishedTime: Date? = nil, recipients: List10? = nil, reportSummary: InlineResponse2009ReportSummary? = nil, showReport: Bool? = nil, site: InlineResponse2009Site? = nil, startTime: Date? = nil, status: Status? = nil, thumbnail: String? = nil, type: ModelType? = nil, updatedAt: Date? = nil, wasCanceledByFacebook: Bool? = nil, webId: Int? = nil) {
    self.links = links
    self.audience = audience
    self.budget = budget
    self.canceledAt = canceledAt
    self.channel = channel
    self.content = content
    self.createTime = createTime
    self.emailSourceName = emailSourceName
    self.endTime = endTime
    self.feedback = feedback
    self.hasAudience = hasAudience
    self.hasContent = hasContent
    self.hasSegment = hasSegment
    self._id = _id
    self.isConnected = isConnected
    self.name = name
    self.needsAttention = needsAttention
    self.pausedAt = pausedAt
    self.publishedTime = publishedTime
    self.recipients = recipients
    self.reportSummary = reportSummary
    self.showReport = showReport
    self.site = site
    self.startTime = startTime
    self.status = status
    self.thumbnail = thumbnail
    self.type = type
    self.updatedAt = updatedAt
    self.wasCanceledByFacebook = wasCanceledByFacebook
    self.webId = webId
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case audience
    case budget
    case canceledAt = "canceled_at"
    case channel
    case content
    case createTime = "create_time"
    case emailSourceName = "email_source_name"
    case endTime = "end_time"
    case feedback
    case hasAudience = "has_audience"
    case hasContent = "has_content"
    case hasSegment = "has_segment"
    case _id = "id"
    case isConnected = "is_connected"
    case name
    case needsAttention = "needs_attention"
    case pausedAt = "paused_at"
    case publishedTime = "published_time"
    case recipients
    case reportSummary = "report_summary"
    case showReport = "show_report"
    case site
    case startTime = "start_time"
    case status
    case thumbnail
    case type
    case updatedAt = "updated_at"
    case wasCanceledByFacebook = "was_canceled_by_facebook"
    case webId = "web_id"
  }
}
