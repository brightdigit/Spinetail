import Foundation

/** A workflow&#x27;s runtime settings for an Automation. */

public struct AutomationWorkflowRuntimeSettings: Codable {
  public enum Days: String, Codable {
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
  public var hours: Hours?

  public init(days: [Days]? = nil, hours: Hours? = nil) {
    self.days = days
    self.hours = hours
  }
}
