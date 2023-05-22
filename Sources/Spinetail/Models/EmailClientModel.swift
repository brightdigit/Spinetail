import Foundation

import PrchModel
/** The email client. */
public struct EmailClientModel: Codable, Equatable, Content {
  /** The name of the email client. */
  public var client: String?

  /** The number of subscribed members who used this email client. */
  public var members: Int?

  public init(client: String? = nil, members: Int? = nil) {
    self.client = client
    self.members = members
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case client
    case members
  }
}
