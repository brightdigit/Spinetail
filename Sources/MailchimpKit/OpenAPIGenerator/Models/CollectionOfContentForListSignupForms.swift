import Foundation

/** Collection of Content for List Signup Forms. */

public struct CollectionOfContentForListSignupForms: Codable {
  public enum Section: String, Codable {
    case signupMessage = "signup_message"
    case unsubMessage = "unsub_message"
    case signupThankYouTitle = "signup_thank_you_title"
  }

  /** The content section name. */
  public var section: Section?
  /** The content section text. */
  public var value: String?

  public init(section: Section? = nil, value: String? = nil) {
    self.section = section
    self.value = value
  }
}
