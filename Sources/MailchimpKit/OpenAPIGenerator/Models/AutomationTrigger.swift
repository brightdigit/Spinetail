import Foundation

/** Trigger settings for the Automation. */

public struct AutomationTrigger: Codable {
  /** The type of Automation workflow. Currently only supports &#x27;abandonedCart&#x27;. */
  public var workflowType: String

  public init(workflowType: String) {
    self.workflowType = workflowType
  }

  public enum CodingKeys: String, CodingKey {
    case workflowType = "workflow_type"
  }
}
