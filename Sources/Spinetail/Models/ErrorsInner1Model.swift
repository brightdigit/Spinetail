import Foundation

import PrchModel
public struct ErrorsInner1Model: Codable, Equatable, Content {
  /** Email addresses added to the static segment or removed */
  public var emailAddresses: [String]?

  /** The error message indicating why the email addresses could not be added or updated. */
  public var error: String?

  public init(emailAddresses: [String]? = nil, error: String? = nil) {
    self.emailAddresses = emailAddresses
    self.error = error
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case emailAddresses = "email_addresses"
    case error
  }
}
