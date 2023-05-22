import Foundation
import PrchModel

public extension Lists {
  /**
   List webhooks

   Get information about all webhooks for a specific list.
   */
  struct GetListsIdWebhooks: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/webhooks"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** The unique ID for the list. */
    public var listId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "getListsIdWebhooks", tag: "lists", method: "GET", path: "/lists/{list_id}/webhooks", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = ListWebhooksModel
    public typealias BodyType = Empty
  }
}
