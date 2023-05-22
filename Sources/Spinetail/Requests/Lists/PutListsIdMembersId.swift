import Foundation
import PrchModel

public extension AutomationsAutomationsLists {
  /**
   Add or update list member

   Add or update a list member.
   */
  struct PutListsIdMembersId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/members/{subscriber_hash}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)").replacingOccurrences(of: "{" + "subscriber_hash" + "}", with: "\(subscriberHash)")
    }

    public var method: RequestMethod {
      .PUT
    }

    /** The unique ID for the list. */
    public var listId: String

    /** The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts a list member's email address or contact_id. */
    public var subscriberHash: String

    /** If skip_merge_validation is true, member data will be accepted without merge field values, even if the merge field is usually required. This defaults to false. */
    public var skipMergeValidation: Bool?

    public var parameters: [String: String] {
      var params: [String: String] = [:]
      if let skipMergeValidation = self.skipMergeValidation {
        params["skip_merge_validation"] = String(describing: skipMergeValidation)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "putListsIdMembersId", tag: "lists", method: "PUT", path: "/lists/{list_id}/members/{subscriber_hash}", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = ListMembers2Model
    public typealias BodyType = AddListMembers2Model

    public let body: AddListMembers2Model
  }
}
