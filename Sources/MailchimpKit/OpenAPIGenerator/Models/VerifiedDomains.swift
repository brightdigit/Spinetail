import Foundation

/** The verified domains currently on the account. */

public struct VerifiedDomains: Codable {
  /** The name of this domain. */
  public var domain: String?
  /** Whether the domain has been verified for sending. */
  public var verified: Bool?
  /** Whether domain authentication is enabled for this domain. */
  public var authenticated: Bool?
  /** The e-mail address receiving the two-factor challenge for this domain. */
  public var verificationEmail: String?
  /** The date/time that the two-factor challenge was sent to the verification email. */
  public var verificationSent: Date?

  public init(domain: String? = nil, verified: Bool? = nil, authenticated: Bool? = nil, verificationEmail: String? = nil, verificationSent: Date? = nil) {
    self.domain = domain
    self.verified = verified
    self.authenticated = authenticated
    self.verificationEmail = verificationEmail
    self.verificationSent = verificationSent
  }

  public enum CodingKeys: String, CodingKey {
    case domain
    case verified
    case authenticated
    case verificationEmail = "verification_email"
    case verificationSent = "verification_sent"
  }
}
