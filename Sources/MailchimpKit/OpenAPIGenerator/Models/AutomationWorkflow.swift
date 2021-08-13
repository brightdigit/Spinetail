import Foundation

public struct AutomationWorkflowRecipient: Codable {
  public let storeId: String?
  public let listId: String?

  public enum CodingKeys: String, CodingKey {
    case storeId = "store_id"
    case listId = "list_id"
  }
}

/** A summary of an individual Automation workflow&#x27;s settings and content. */

public struct AutomationWorkflow: Codable {
  public var recipients: [AutomationWorkflowRecipient]
  public var settings: AutomationCampaignSettings?
  public var triggerSettings: AutomationTrigger

  public init(recipients: [AutomationWorkflowRecipient], settings: AutomationCampaignSettings? = nil, triggerSettings: AutomationTrigger) {
    self.recipients = recipients
    self.settings = settings
    self.triggerSettings = triggerSettings
  }

  public enum CodingKeys: String, CodingKey {
    case recipients
    case settings
    case triggerSettings = "trigger_settings"
  }
}
