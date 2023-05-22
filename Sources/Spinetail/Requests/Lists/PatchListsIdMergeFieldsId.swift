import Foundation
import PrchModel

public extension AutomationsAutomationsLists {
  /**
   Update merge field

   Update a specific merge field.
   */
  struct PatchListsIdMergeFieldsId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/merge-fields/{merge_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)").replacingOccurrences(of: "{" + "merge_id" + "}", with: "\(mergeId)")
    }

    public var method: RequestMethod {
      .PATCH
    }

    /** The unique ID for the list. */
    public var listId: String

    /** The id for the merge field. */
    public var mergeId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "patchListsIdMergeFieldsId", tag: "lists", method: "PATCH", path: "/lists/{list_id}/merge-fields/{merge_id}", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = MergeFieldModel
    public typealias BodyType = MergeField2Model

    public let body: MergeField2Model
  }
}
