import Foundation
import PrchModel

public extension AutomationsAutomationsLists {
  /**
   Add webhook

   Create a new webhook for a specific list.
   */
  struct PostListsIdWebhooks: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/webhooks"

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

    // public static let service = APIService<Response>(id: "postListsIdWebhooks", tag: "lists", method: "POST", path: "/lists/{list_id}/webhooks", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = ListWebhooksModel
    public typealias BodyType = AddWebhookModel

    public let body: AddWebhookModel
  }
}
