import Foundation

import PrchModel
/** Trigger settings for the Automation. */
public struct AutomationTrigger1Model: Codable, Equatable, Content {
  /** The type of Automation workflow. Currently only supports 'abandonedCart'. */
  public var workflowType: String

  public init(workflowType: String) {
    self.workflowType = workflowType
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case workflowType = "workflow_type"
  }
}
