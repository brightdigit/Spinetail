import Foundation
import PrchModel

public extension Lists {
  /**
   Update interest in category

   Update interests or 'group names' for a specific category.
   */
  struct PatchListsIdInterestCategoriesIdInterestsId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/interest-categories/{interest_category_id}/interests/{interest_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)").replacingOccurrences(of: "{" + "interest_category_id" + "}", with: "\(interestCategoryId)").replacingOccurrences(of: "{" + "interest_id" + "}", with: "\(interestId)")
    }

    public var method: RequestMethod {
      .PATCH
    }

    /** The unique ID for the list. */
    public var listId: String

    /** The unique ID for the interest category. */
    public var interestCategoryId: String

    /** The specific interest or 'group name'. */
    public var interestId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "patchListsIdInterestCategoriesIdInterestsId", tag: "lists", method: "PATCH", path: "/lists/{list_id}/interest-categories/{interest_category_id}/interests/{interest_id}", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = InterestModel
    public typealias BodyType = Interest1Model

    public let body: Interest1Model
  }
}
