import Foundation

import PrchModel
/** List signup form. */
public struct SignupForm1Model: Codable, Equatable, Content {
  /** The signup form body content. */
  public var contents: [CollectionOfContentForListSignupFormsModel]?

  public var header: SignupFormHeaderOptionsModel?

  /** An array of objects, each representing an element style for the signup form. */
  public var styles: [CollectionOfElementStyleForListSignupFormsModel]?

  public init(contents: [CollectionOfContentForListSignupFormsModel]? = nil, header: SignupFormHeaderOptionsModel? = nil, styles: [CollectionOfElementStyleForListSignupFormsModel]? = nil) {
    self.contents = contents
    self.header = header
    self.styles = styles
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case contents
    case header
    case styles
  }
}
