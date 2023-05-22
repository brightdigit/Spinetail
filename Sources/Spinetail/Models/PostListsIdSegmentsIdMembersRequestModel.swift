import Foundation

import PrchModel
public struct PostListsIdSegmentsIdMembersRequestModel: Codable, Equatable, Content {
  /** Email address for a subscriber. */
  public var emailAddress: String

  public init(emailAddress: String) {
    self.emailAddress = emailAddress
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case emailAddress = "email_address"
  }
}
