import Foundation
import PrchModel

public extension Lists {
  /**
   Delete webhook

   Delete a specific webhook in a list.
   */
  struct DeleteListsIdWebhooksId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/webhooks/{webhook_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)").replacingOccurrences(of: "{" + "webhook_id" + "}", with: "\(webhookId)")
    }

    public var method: RequestMethod {
      .DELETE
    }

    /** The unique ID for the list. */
    public var listId: String

    /** The webhook's id. */
    public var webhookId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "deleteListsIdWebhooksId", tag: "lists", method: "DELETE", path: "/lists/{list_id}/webhooks/{webhook_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = Empty
    public typealias BodyType = Empty
  }
}
