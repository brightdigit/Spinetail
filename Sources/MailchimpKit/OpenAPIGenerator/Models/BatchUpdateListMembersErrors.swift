import Foundation

public struct BatchUpdateListMembersErrors: Codable {
  public enum ErrorCode: String, Codable {
    case contactExists = "ERROR_CONTACT_EXISTS"
    case generic = "ERROR_GENERIC"
  }

  /** The email address that could not be added or updated. */
  public var emailAddress: String?
  /** The error message indicating why the email address could not be added or updated. */
  public var error: String?
  /** A unique code that identifies this specifc error. */
  public var errorCode: ErrorCode?

  public init(emailAddress: String? = nil, error: String? = nil, errorCode: ErrorCode? = nil) {
    self.emailAddress = emailAddress
    self.error = error
    self.errorCode = errorCode
  }

  public enum CodingKeys: String, CodingKey {
    case emailAddress = "email_address"
    case error
    case errorCode = "error_code"
  }
}
