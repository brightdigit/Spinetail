import Foundation

import PrchModel
/** List signup form. */
public struct SignupFormModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** The signup form body content. */
  public var contents: [CollectionOfContentForListSignupFormsModel]?

  public var header: SignupFormHeaderOptionsModel?

  /** The signup form's list id. */
  public var listId: String?

  /** Signup form URL. */
  public var signupFormURL: String?

  /** An array of objects, each representing an element style for the signup form. */
  public var styles: [CollectionOfElementStyleForListSignupFormsModel]?

  public init(links: [ResourceLinkModel]? = nil, contents: [CollectionOfContentForListSignupFormsModel]? = nil, header: SignupFormHeaderOptionsModel? = nil, listId: String? = nil, signupFormURL: String? = nil, styles: [CollectionOfElementStyleForListSignupFormsModel]? = nil) {
    self.links = links
    self.contents = contents
    self.header = header
    self.listId = listId
    self.signupFormURL = signupFormURL
    self.styles = styles
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case contents
    case header
    case listId = "list_id"
    case signupFormURL = "signup_form_url"
    case styles
  }
}
