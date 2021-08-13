import Foundation

/** List signup form. */

public struct SignupForm1: Codable {
  public var header: SignupFormHeaderOptions?
  /** The signup form body content. */
  public var contents: [CollectionOfContentForListSignupForms]?
  /** An array of objects, each representing an element style for the signup form. */
  public var styles: [CollectionOfElementStyleForListSignupForms]?
  /** Signup form URL. */
  public var signupFormUrl: String?
  /** The signup form&#x27;s list id. */
  public var listId: String?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(header: SignupFormHeaderOptions? = nil, contents: [CollectionOfContentForListSignupForms]? = nil, styles: [CollectionOfElementStyleForListSignupForms]? = nil, signupFormUrl: String? = nil, listId: String? = nil, links: [ResourceLink]? = nil) {
    self.header = header
    self.contents = contents
    self.styles = styles
    self.signupFormUrl = signupFormUrl
    self.listId = listId
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case header
    case contents
    case styles
    case signupFormUrl = "signup_form_url"
    case listId = "list_id"
    case links = "_links"
  }
}
