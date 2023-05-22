import Foundation
import PrchModel

public extension AutomationsAutomationsLists {
  /**
   Batch subscribe or unsubscribe

   Batch subscribe or unsubscribe list members.
   */
  struct PostListsId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)")
    }

    public var method: RequestMethod {
      .POST
    }

    /** The unique ID for the list. */
    public var listId: String

    /** If skip_merge_validation is true, member data will be accepted without merge field values, even if the merge field is usually required. This defaults to false. */
    public var skipMergeValidation: Bool?

    /** If skip_duplicate_check is true, we will ignore duplicates sent in the request when using the batch sub/unsub on the lists endpoint. The status of the first appearance in the request will be saved. This defaults to false. */
    public var skipDuplicateCheck: Bool?

    public var parameters: [String: String] {
      var params: [String: String] = [:]
      if let skipMergeValidation = self.skipMergeValidation {
        params["skip_merge_validation"] = String(describing: skipMergeValidation)
      }
      if let skipDuplicateCheck = self.skipDuplicateCheck {
        params["skip_duplicate_check"] = String(describing: skipDuplicateCheck)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "postListsId", tag: "lists", method: "POST", path: "/lists/{list_id}", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = BatchUpdateListMembersModel
    public typealias BodyType = MembersToSubscribeUnsubscribeToFromaListInBatchModel

    public let body: MembersToSubscribeUnsubscribeToFromaListInBatchModel
  }
}
