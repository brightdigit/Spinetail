import Foundation
import PrchModel

public extension AutomationsAutomationsLists {
  /**
   Get growth history by month

   Get a summary of a specific list's growth activity for a specific month and year.
   */
  struct GetListsIdGrowthHistoryId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/growth-history/{month}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)").replacingOccurrences(of: "{" + "month" + "}", with: "\(month)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
    public var fields: [String]?

    /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
    public var excludeFields: [String]?

    /** The unique ID for the list. */
    public var listId: String

    /** A specific month of list growth history. */
    public var month: String

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

    // public static let service = APIService<Response>(id: "getListsIdGrowthHistoryId", tag: "lists", method: "GET", path: "/lists/{list_id}/growth-history/{month}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = GrowthHistoryModel
    public typealias BodyType = Empty
  }
}
