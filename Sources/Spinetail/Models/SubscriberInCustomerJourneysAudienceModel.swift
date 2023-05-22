import Foundation

import PrchModel
/** Information about subscribers in a Customer Journey's audience. */
public struct SubscriberInCustomerJourneysAudienceModel: Codable, Equatable, Content {
  /** The list member's email address. */
  public var emailAddress: String

  public init(emailAddress: String) {
    self.emailAddress = emailAddress
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case emailAddress = "email_address"
  }
}
