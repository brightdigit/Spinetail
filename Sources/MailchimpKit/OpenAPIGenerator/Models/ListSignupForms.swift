import Foundation

/** List Signup Forms. */

public struct ListSignupForms: Codable {
  /** List signup form. */
  public var signupForms: [SignupForm2]?
  /** The list id. */
  public var listId: String?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(signupForms: [SignupForm2]? = nil, listId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.signupForms = signupForms
    self.listId = listId
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case signupForms = "signup_forms"
    case listId = "list_id"
    case totalItems = "total_items"
    case links = "_links"
  }
}
