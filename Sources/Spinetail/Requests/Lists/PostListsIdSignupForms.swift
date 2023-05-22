import Foundation
import PrchModel

public extension Lists {
  /**
   Customize signup form

   Customize a list's default signup form.
   */
  struct PostListsIdSignupForms: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/signup-forms"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)")
    }

    public var method: RequestMethod {
      .POST
    }

    /** The unique ID for the list. */
    public var listId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "postListsIdSignupForms", tag: "lists", method: "POST", path: "/lists/{list_id}/signup-forms", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = SignupFormModel
    public typealias BodyType = SignupForm1Model

    public let body: SignupForm1Model
  }
}
