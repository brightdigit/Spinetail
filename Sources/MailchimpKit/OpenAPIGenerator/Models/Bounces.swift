import Foundation

/** An object describing the bounce summary for the campaign. */

public struct Bounces: Codable {
  /** The total number of hard bounced email addresses. */
  public var hardBounces: Int?
  /** The total number of soft bounced email addresses. */
  public var softBounces: Int?
  /** The total number of addresses that were syntax-related bounces. */
  public var syntaxErrors: Int?

  public init(hardBounces: Int? = nil, softBounces: Int? = nil, syntaxErrors: Int? = nil) {
    self.hardBounces = hardBounces
    self.softBounces = softBounces
    self.syntaxErrors = syntaxErrors
  }

  public enum CodingKeys: String, CodingKey {
    case hardBounces = "hard_bounces"
    case softBounces = "soft_bounces"
    case syntaxErrors = "syntax_errors"
  }
}
