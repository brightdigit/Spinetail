import Foundation
import PrchModel

public extension AutomationsAutomationsLists {
  /**
   Update webhook

   Update the settings for an existing webhook.
   */
  struct PatchListsIdWebhooksId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/webhooks/{webhook_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)").replacingOccurrences(of: "{" + "webhook_id" + "}", with: "\(webhookId)")
    }

    public var method: RequestMethod {
      .PATCH
    }

    /** The unique ID for the list. */
    public var listId: String

    /** The webhook's id. */
    public var webhookId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "patchListsIdWebhooksId", tag: "lists", method: "PATCH", path: "/lists/{list_id}/webhooks/{webhook_id}", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = ListWebhooksModel
    public typealias BodyType = AddWebhookModel

    public let body: AddWebhookModel
  }
}
