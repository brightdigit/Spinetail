import Foundation

/** Information about subscribers in an Automation email queue. */

public struct SubscriberInAutomationQueue: Codable {
  /** The list member&#x27;s email address. */
  public var emailAddress: String

  public init(emailAddress: String) {
    self.emailAddress = emailAddress
  }

  public enum CodingKeys: String, CodingKey {
    case emailAddress = "email_address"
  }
}
