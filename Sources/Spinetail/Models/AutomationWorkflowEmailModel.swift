import Foundation

import PrchModel
/** A summary of an individual Automation workflow email. */
public struct AutomationWorkflowEmailModel: Codable, Equatable, Content {
  /** The current status of the campaign. */
  public enum AutomationsAutomationsStatus: String, Codable, Equatable, CaseIterable {
    case save
    case paused
    case sending
  }

  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** The link to the campaign's archive version in ISO 8601 format. */
  public var archiveURL: String?

  /** How the campaign's content is put together ('template', 'drag_and_drop', 'html', 'url'). */
  public var contentType: String?

  /** The date and time the campaign was created in ISO 8601 format. */
  public var createTime: DateTime?

  public var delay: AutomationDelayModel?

  /** The total number of emails sent for this campaign. */
  public var emailsSent: Int?

  /** Determines if the campaign contains the *|BRAND:LOGO|* merge tag. */
  public var hasLogoMergeTag: Bool?

  /** A string that uniquely identifies the Automation email. */
  public var id: String?

  /** Determines if the automation email needs its blocks refreshed by opening the web-based campaign editor. */
  public var needsBlockRefresh: Bool?

  /** The position of an Automation email in a workflow. */
  public var position: Int?

  public var recipients: List2Model?

  public var reportSummary: CampaignReportSummary1Model?

  /**  The date and time a campaign was sent in ISO 8601 format */
  public var sendTime: DateTime?

  public var settings: CampaignSettingsModel?

  public var socialCard: CampaignSocialCardModel?

  /** The date and time the campaign was started in ISO 8601 format. */
  public var startTime: DateTime?

  /** The current status of the campaign. */
  public var status: Status?

  public var tracking: CampaignTrackingOptionsModel?

  public var triggerSettings: AutomationTriggerModel?

  /** The ID used in the Mailchimp web application. View this automation in your Mailchimp account at `https://{dc}.admin.mailchimp.com/campaigns/show/?id={web_id}`. */
  public var webId: Int?

  /** A string that uniquely identifies an Automation workflow. */
  public var workflowId: String?

  public init(links: [ResourceLinkModel]? = nil, archiveURL: String? = nil, contentType: String? = nil, createTime: DateTime? = nil, delay: AutomationDelayModel? = nil, emailsSent: Int? = nil, hasLogoMergeTag: Bool? = nil, id: String? = nil, needsBlockRefresh: Bool? = nil, position: Int? = nil, recipients: List2Model? = nil, reportSummary: CampaignReportSummary1Model? = nil, sendTime: DateTime? = nil, settings: CampaignSettingsModel? = nil, socialCard: CampaignSocialCardModel? = nil, startTime: DateTime? = nil, status: Status? = nil, tracking: CampaignTrackingOptionsModel? = nil, triggerSettings: AutomationTriggerModel? = nil, webId: Int? = nil, workflowId: String? = nil) {
    self.links = links
    self.archiveURL = archiveURL
    self.contentType = contentType
    self.createTime = createTime
    self.delay = delay
    self.emailsSent = emailsSent
    self.hasLogoMergeTag = hasLogoMergeTag
    self.id = id
    self.needsBlockRefresh = needsBlockRefresh
    self.position = position
    self.recipients = recipients
    self.reportSummary = reportSummary
    self.sendTime = sendTime
    self.settings = settings
    self.socialCard = socialCard
    self.startTime = startTime
    self.status = status
    self.tracking = tracking
    self.triggerSettings = triggerSettings
    self.webId = webId
    self.workflowId = workflowId
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case archiveURL = "archive_url"
    case contentType = "content_type"
    case createTime = "create_time"
    case delay
    case emailsSent = "emails_sent"
    case hasLogoMergeTag = "has_logo_merge_tag"
    case id
    case needsBlockRefresh = "needs_block_refresh"
    case position
    case recipients
    case reportSummary = "report_summary"
    case sendTime = "send_time"
    case settings
    case socialCard = "social_card"
    case startTime = "start_time"
    case status
    case tracking
    case triggerSettings = "trigger_settings"
    case webId = "web_id"
    case workflowId = "workflow_id"
  }
}
