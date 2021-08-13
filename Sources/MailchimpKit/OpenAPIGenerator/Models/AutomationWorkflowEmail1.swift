import Foundation

/** A summary of an individual Automation workflow email. */

public struct AutomationWorkflowEmail1: Codable {
  public enum Status: String, Codable {
    case save
    case paused
    case sending
  }

  /** A string that uniquely identifies the Automation email. */
  public var _id: String?
  /** The ID used in the Mailchimp web application. View this automation in your Mailchimp account at &#x60;https://{dc}.admin.mailchimp.com/campaigns/show/?id&#x3D;{web_id}&#x60;. */
  public var webId: Int?
  /** A string that uniquely identifies an Automation workflow. */
  public var workflowId: String?
  /** The position of an Automation email in a workflow. */
  public var position: Int?
  public var delay: AutomationDelay1?
  /** The date and time the campaign was created in ISO 8601 format. */
  public var createTime: Date?
  /** The date and time the campaign was started in ISO 8601 format. */
  public var startTime: Date?
  /** The link to the campaign&#x27;s archive version in ISO 8601 format. */
  public var archiveUrl: String?
  /** The current status of the campaign. */
  public var status: Status?
  /** The total number of emails sent for this campaign. */
  public var emailsSent: Int?
  /**  The date and time a campaign was sent in ISO 8601 format */
  public var sendTime: Date?
  /** How the campaign&#x27;s content is put together (&#x27;template&#x27;, &#x27;drag_and_drop&#x27;, &#x27;html&#x27;, &#x27;url&#x27;). */
  public var contentType: String?
  /** Determines if the automation email needs its blocks refreshed by opening the web-based campaign editor. */
  public var needsBlockRefresh: Bool?
  /** Determines if the campaign contains the *|BRAND:LOGO|* merge tag. */
  public var hasLogoMergeTag: Bool?
  public var recipients: List11?
  public var settings: CampaignSettings5?
  public var tracking: CampaignTrackingOptions1?
  public var socialCard: CampaignSocialCard?
  public var triggerSettings: AutomationTrigger1?
  public var reportSummary: CampaignReportSummary3?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(_id: String? = nil, webId: Int? = nil, workflowId: String? = nil, position: Int? = nil, delay: AutomationDelay1? = nil, createTime: Date? = nil, startTime: Date? = nil, archiveUrl: String? = nil, status: Status? = nil, emailsSent: Int? = nil, sendTime: Date? = nil, contentType: String? = nil, needsBlockRefresh: Bool? = nil, hasLogoMergeTag: Bool? = nil, recipients: List11? = nil, settings: CampaignSettings5? = nil, tracking: CampaignTrackingOptions1? = nil, socialCard: CampaignSocialCard? = nil, triggerSettings: AutomationTrigger1? = nil, reportSummary: CampaignReportSummary3? = nil, links: [ResourceLink]? = nil) {
    self._id = _id
    self.webId = webId
    self.workflowId = workflowId
    self.position = position
    self.delay = delay
    self.createTime = createTime
    self.startTime = startTime
    self.archiveUrl = archiveUrl
    self.status = status
    self.emailsSent = emailsSent
    self.sendTime = sendTime
    self.contentType = contentType
    self.needsBlockRefresh = needsBlockRefresh
    self.hasLogoMergeTag = hasLogoMergeTag
    self.recipients = recipients
    self.settings = settings
    self.tracking = tracking
    self.socialCard = socialCard
    self.triggerSettings = triggerSettings
    self.reportSummary = reportSummary
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case webId = "web_id"
    case workflowId = "workflow_id"
    case position
    case delay
    case createTime = "create_time"
    case startTime = "start_time"
    case archiveUrl = "archive_url"
    case status
    case emailsSent = "emails_sent"
    case sendTime = "send_time"
    case contentType = "content_type"
    case needsBlockRefresh = "needs_block_refresh"
    case hasLogoMergeTag = "has_logo_merge_tag"
    case recipients
    case settings
    case tracking
    case socialCard = "social_card"
    case triggerSettings = "trigger_settings"
    case reportSummary = "report_summary"
    case links = "_links"
  }
}
