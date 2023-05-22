import Foundation

import PrchModel
/** A workflow's runtime settings for an Automation. */
public struct AutomationWorkflowRuntimeSettingsModel: Codable, Equatable, Content {
  /** The days an Automation workflow can send. */
  public enum AutomationsAutomationsDays: String, Codable, Equatable, CaseIterable {
    case sunday
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
  }

  /** The days an Automation workflow can send. */
  public var days: [Days]?

  public var hours: HoursModel?

  public init(days: [Days]? = nil, hours: HoursModel? = nil) {
    self.days = days
    self.hours = hours
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case days
    case hours
  }
}
