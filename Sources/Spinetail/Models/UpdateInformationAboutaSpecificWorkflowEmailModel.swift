import Foundation

import PrchModel
/** Update information about an individual Automation workflow email. */
public struct UpdateInformationAboutaSpecificWorkflowEmailModel: Codable, Equatable, Content {
  public var delay: AutomationDelay1Model?

  public var settings: CampaignSettings1Model?

  public init(delay: AutomationDelay1Model? = nil, settings: CampaignSettings1Model? = nil) {
    self.delay = delay
    self.settings = settings
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case delay
    case settings
  }
}
