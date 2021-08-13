import Foundation

/** The email client. */

public struct EmailClient: Codable {
  /** The name of the email client. */
  public var client: String?
  /** The number of subscribed members who used this email client. */
  public var members: Int?

  public init(client: String? = nil, members: Int? = nil) {
    self.client = client
    self.members = members
  }
}
