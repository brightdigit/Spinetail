import Foundation
import PrchModel

public extension AutomationsAutomationsLists {
  /**
   Update lists

   Update the settings for a specific list.
   */
  struct PatchListsId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)")
    }

    public var method: RequestMethod {
      .PATCH
    }

    /** The unique ID for the list. */
    public var listId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "patchListsId", tag: "lists", method: "PATCH", path: "/lists/{list_id}", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = SubscriberListModel
    public typealias BodyType = SubscriberList2Model

    public let body: SubscriberList2Model
  }
}
