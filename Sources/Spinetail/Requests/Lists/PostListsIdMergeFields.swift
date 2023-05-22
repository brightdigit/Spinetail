import Foundation
import PrchModel

public extension AutomationsAutomationsLists {
  /**
   Add merge field

   Add a new merge field for a specific audience.
   */
  struct PostListsIdMergeFields: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/merge-fields"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)")
    }

    public var method: RequestMethod {
      .POST
    }

    /** The unique ID for the list. */
    public var listId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "postListsIdMergeFields", tag: "lists", method: "POST", path: "/lists/{list_id}/merge-fields", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = MergeFieldModel
    public typealias BodyType = MergeField1Model

    public let body: MergeField1Model
  }
}
