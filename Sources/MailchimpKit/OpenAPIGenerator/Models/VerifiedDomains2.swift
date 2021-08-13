import Foundation

/** The verified domains currently on the account. */

public struct VerifiedDomains2: Codable {
  /** The e-mail address at the domain you want to verify. This will receive a two-factor challenge to be used in the verify action. */
  public var verificationEmail: String

  public init(verificationEmail: String) {
    self.verificationEmail = verificationEmail
  }

  public enum CodingKeys: String, CodingKey {
    case verificationEmail = "verification_email"
  }
}
