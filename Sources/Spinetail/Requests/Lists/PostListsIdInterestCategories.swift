import Foundation
import PrchModel

public extension AutomationsAutomationsLists {
  /**
   Add interest category

   Create a new interest category.
   */
  struct PostListsIdInterestCategories: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/interest-categories"

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

    // public static let service = APIService<Response>(id: "postListsIdInterestCategories", tag: "lists", method: "POST", path: "/lists/{list_id}/interest-categories", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = InterestCategoryModel
    public typealias BodyType = InterestCategory1Model

    public let body: InterestCategory1Model
  }
}
