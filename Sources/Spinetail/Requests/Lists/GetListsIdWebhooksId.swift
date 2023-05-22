import Foundation
import PrchModel

public extension Lists {
  /**
   Get webhook info

   Get information about a specific webhook.
   */
  struct GetListsIdWebhooksId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/webhooks/{webhook_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)").replacingOccurrences(of: "{" + "webhook_id" + "}", with: "\(webhookId)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** The unique ID for the list. */
    public var listId: String

    /** The webhook's id. */
    public var webhookId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "getListsIdWebhooksId", tag: "lists", method: "GET", path: "/lists/{list_id}/webhooks/{webhook_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = ListWebhooksModel
    public typealias BodyType = Empty
  }
}
