import Foundation
import PrchModel

public extension AutomationsAutomationsLists {
  /**
   Add segment

   Create a new segment in a specific list.
   */
  struct PostListsIdSegments: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/segments"

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

    // public static let service = APIService<Response>(id: "postListsIdSegments", tag: "lists", method: "POST", path: "/lists/{list_id}/segments", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = List7Model
    public typealias BodyType = List8Model

    public let body: List8Model
  }
}
