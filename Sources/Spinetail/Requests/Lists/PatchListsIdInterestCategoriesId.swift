import Foundation
import PrchModel

public extension AutomationsAutomationsLists {
  /**
   Update interest category

   Update a specific interest category.
   */
  struct PatchListsIdInterestCategoriesId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/interest-categories/{interest_category_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)").replacingOccurrences(of: "{" + "interest_category_id" + "}", with: "\(interestCategoryId)")
    }

    public var method: RequestMethod {
      .PATCH
    }

    /** The unique ID for the list. */
    public var listId: String

    /** The unique ID for the interest category. */
    public var interestCategoryId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "patchListsIdInterestCategoriesId", tag: "lists", method: "PATCH", path: "/lists/{list_id}/interest-categories/{interest_category_id}", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = InterestCategoryModel
    public typealias BodyType = InterestCategory1Model

    public let body: InterestCategory1Model
  }
}
