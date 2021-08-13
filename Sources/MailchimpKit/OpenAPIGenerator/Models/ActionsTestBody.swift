import Foundation

public struct ActionsTestBody: Codable {
  public enum SendType: String, Codable {
    case html
    case plaintext
  }

  /** An array of email addresses to send the test email to. */
  public var testEmails: [String]
  /** Choose the type of test email to send. */
  public var sendType: SendType

  public init(testEmails: [String], sendType: SendType) {
    self.testEmails = testEmails
    self.sendType = sendType
  }

  public enum CodingKeys: String, CodingKey {
    case testEmails = "test_emails"
    case sendType = "send_type"
  }
}
