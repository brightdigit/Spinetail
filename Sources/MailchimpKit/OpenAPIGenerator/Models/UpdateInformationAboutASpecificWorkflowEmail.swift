import Foundation

/** Update information about an individual Automation workflow email. */

public struct UpdateInformationAboutASpecificWorkflowEmail: Codable {
  public var settings: CampaignSettings?
  public var delay: AutomationDelay?

  public init(settings: CampaignSettings? = nil, delay: AutomationDelay? = nil) {
    self.settings = settings
    self.delay = delay
  }
}
