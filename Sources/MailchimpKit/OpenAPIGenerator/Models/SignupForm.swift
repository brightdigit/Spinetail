import Foundation

/** List signup form. */

public struct SignupForm: Codable {
  public var header: SignupFormHeaderOptions?
  /** The signup form body content. */
  public var contents: [CollectionOfContentForListSignupForms]?
  /** An array of objects, each representing an element style for the signup form. */
  public var styles: [CollectionOfElementStyleForListSignupForms]?

  public init(header: SignupFormHeaderOptions? = nil, contents: [CollectionOfContentForListSignupForms]? = nil, styles: [CollectionOfElementStyleForListSignupForms]? = nil) {
    self.header = header
    self.contents = contents
    self.styles = styles
  }
}
