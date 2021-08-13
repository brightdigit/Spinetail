import Foundation

/** A summary of an individual Automation workflow&#x27;s settings and content. */

public struct AutomationWorkflow2: Codable {
  public enum Status: String, Codable {
    case save
    case paused
    case sending
  }

  /** A string that identifies the Automation. */
  public var _id: String?
  /** The date and time the Automation was created in ISO 8601 format. */
  public var createTime: Date?
  /** The date and time the Automation was started in ISO 8601 format. */
  public var startTime: Date?
  /** The current status of the Automation. */
  public var status: Status?
  /** The total number of emails sent for the Automation. */
  public var emailsSent: Int?
  public var recipients: List9?
  public var settings: AutomationCampaignSettings1?
  public var tracking: AutomationTrackingOptions?
  public var triggerSettings: AutomationTrigger1?
  public var reportSummary: CampaignReportSummary2?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(_id: String? = nil, createTime: Date? = nil, startTime: Date? = nil, status: Status? = nil, emailsSent: Int? = nil, recipients: List9? = nil, settings: AutomationCampaignSettings1? = nil, tracking: AutomationTrackingOptions? = nil, triggerSettings: AutomationTrigger1? = nil, reportSummary: CampaignReportSummary2? = nil, links: [ResourceLink]? = nil) {
    self._id = _id
    self.createTime = createTime
    self.startTime = startTime
    self.status = status
    self.emailsSent = emailsSent
    self.recipients = recipients
    self.settings = settings
    self.tracking = tracking
    self.triggerSettings = triggerSettings
    self.reportSummary = reportSummary
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case createTime = "create_time"
    case startTime = "start_time"
    case status
    case emailsSent = "emails_sent"
    case recipients
    case settings
    case tracking
    case triggerSettings = "trigger_settings"
    case reportSummary = "report_summary"
    case links = "_links"
  }
}
