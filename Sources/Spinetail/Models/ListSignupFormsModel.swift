import Foundation

import PrchModel
/** List Signup Forms. */
public struct ListSignupFormsModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** The list id. */
  public var listId: String?

  /** List signup form. */
  public var signupForms: [SignupFormModel]?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, listId: String? = nil, signupForms: [SignupFormModel]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.listId = listId
    self.signupForms = signupForms
    self.totalItems = totalItems
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case listId = "list_id"
    case signupForms = "signup_forms"
    case totalItems = "total_items"
  }
}
