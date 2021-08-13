import Foundation

/** Submit a response to the verification challenge and verify a domain for sending. */

public struct VerifyADomainForSending_: Codable {
  /** The code that was sent to the email address provided when adding a new domain to verify. */
  public var code: String

  public init(code: String) {
    self.code = code
  }
}
