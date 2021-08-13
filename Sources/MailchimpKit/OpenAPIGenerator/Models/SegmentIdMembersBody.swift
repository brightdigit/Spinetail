import Foundation

public struct SegmentIdMembersBody: Codable {
  /** Email address for a subscriber. */
  public var emailAddress: String

  public init(emailAddress: String) {
    self.emailAddress = emailAddress
  }

  public enum CodingKeys: String, CodingKey {
    case emailAddress = "email_address"
  }
}
