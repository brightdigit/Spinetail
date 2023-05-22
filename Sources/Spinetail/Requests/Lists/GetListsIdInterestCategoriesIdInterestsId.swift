import Foundation
import PrchModel

public extension Lists {
  /**
   Get interest in category

   Get interests or 'group names' for a specific category.
   */
  struct GetListsIdInterestCategoriesIdInterestsId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/interest-categories/{interest_category_id}/interests/{interest_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)").replacingOccurrences(of: "{" + "interest_category_id" + "}", with: "\(interestCategoryId)").replacingOccurrences(of: "{" + "interest_id" + "}", with: "\(interestId)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** The unique ID for the list. */
    public var listId: String

    /** The unique ID for the interest category. */
    public var interestCategoryId: String

    /** The specific interest or 'group name'. */
    public var interestId: String

    /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
    public var fields: [String]?

    /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
    public var excludeFields: [String]?

    public var parameters: [String: String] {
      var params: [String: String] = [:]
      if let fields = self.fields?.joined(separator: ",") {
        params["fields"] = String(describing: fields)
      }
      if let excludeFields = self.excludeFields?.joined(separator: ",") {
        params["exclude_fields"] = String(describing: excludeFields)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "getListsIdInterestCategoriesIdInterestsId", tag: "lists", method: "GET", path: "/lists/{list_id}/interest-categories/{interest_category_id}/interests/{interest_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = InterestModel
    public typealias BodyType = Empty
  }
}
