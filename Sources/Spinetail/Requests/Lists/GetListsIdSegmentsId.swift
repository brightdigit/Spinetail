import Foundation
import PrchModel

public extension Lists {
  /**
   Get segment info

   Get information about a specific segment.
   */
  struct GetListsIdSegmentsId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/segments/{segment_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)").replacingOccurrences(of: "{" + "segment_id" + "}", with: "\(segmentId)")
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

    /** The unique id for the segment. */
    public var segmentId: String

    /** Include cleaned members in response */
    public var includeCleaned: Bool?

    /** Include transactional members in response */
    public var includeTransactional: Bool?

    /** Include unsubscribed members in response */
    public var includeUnsubscribed: Bool?

    public var parameters: [String: String] {
      var params: [String: String] = [:]
      if let fields = self.fields?.joined(separator: ",") {
        params["fields"] = String(describing: fields)
      }
      if let excludeFields = self.excludeFields?.joined(separator: ",") {
        params["exclude_fields"] = String(describing: excludeFields)
      }
      if let includeCleaned = self.includeCleaned {
        params["include_cleaned"] = String(describing: includeCleaned)
      }
      if let includeTransactional = self.includeTransactional {
        params["include_transactional"] = String(describing: includeTransactional)
      }
      if let includeUnsubscribed = self.includeUnsubscribed {
        params["include_unsubscribed"] = String(describing: includeUnsubscribed)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "getListsIdSegmentsId", tag: "lists", method: "GET", path: "/lists/{list_id}/segments/{segment_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = List7Model
    public typealias BodyType = Empty
  }
}
