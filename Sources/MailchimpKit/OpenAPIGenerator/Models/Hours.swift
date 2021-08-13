import Foundation

/** The hours an Automation workflow can send. */

public struct Hours: Codable {
  public enum ModelType: String, Codable {
    case asap = "send_asap"
    case between = "send_between"
    case at = "send_at"
  }

  /** When to send the Automation email. */
  public var type: ModelType

  public init(type: ModelType) {
    self.type = type
  }
}
