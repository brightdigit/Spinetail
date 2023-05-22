import Foundation
import PrchModel

public extension AutomationsAutomationsLists {
  /**
   Add interest in category

   Create a new interest or 'group name' for a specific category.
   */
  struct PostListsIdInterestCategoriesIdInterests: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/interest-categories/{interest_category_id}/interests"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)").replacingOccurrences(of: "{" + "interest_category_id" + "}", with: "\(interestCategoryId)")
    }

    public var method: RequestMethod {
      .POST
    }

    /** The unique ID for the list. */
    public var listId: String

    /** The unique ID for the interest category. */
    public var interestCategoryId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "postListsIdInterestCategoriesIdInterests", tag: "lists", method: "POST", path: "/lists/{list_id}/interest-categories/{interest_category_id}/interests", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = InterestModel
    public typealias BodyType = Interest1Model

    public let body: Interest1Model
  }
}
