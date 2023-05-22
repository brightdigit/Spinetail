import Foundation
import PrchModel

public extension AutomationsAutomationsLists {
  /**
   Delete merge field

   Delete a specific merge field.
   */
  struct DeleteListsIdMergeFieldsId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/merge-fields/{merge_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)").replacingOccurrences(of: "{" + "merge_id" + "}", with: "\(mergeId)")
    }

    public var method: RequestMethod {
      .DELETE
    }

    /** The unique ID for the list. */
    public var listId: String

    /** The id for the merge field. */
    public var mergeId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "deleteListsIdMergeFieldsId", tag: "lists", method: "DELETE", path: "/lists/{list_id}/merge-fields/{merge_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = Empty
    public typealias BodyType = Empty
  }
}
