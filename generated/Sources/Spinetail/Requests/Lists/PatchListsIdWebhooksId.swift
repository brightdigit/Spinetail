//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import PrchModel

extension Lists {

    /**
    Update webhook

    Update the settings for an existing webhook.
    */
    public struct PatchListsIdWebhooksId : ServiceCall {
        public static var requiresCredentials: Bool {
            return false
        }
        public typealias ServiceAPI = SpinetailAPI

        public static let pathTemplate = "/lists/{list_id}/webhooks/{webhook_id}"

        public var path: String {
            return Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(self.listId)").replacingOccurrences(of: "{" + "webhook_id" + "}", with: "\(self.webhookId)")
        }

        public var method : RequestMethod {
            .PATCH
        }


        /** The unique ID for the list. */
        public var listId: String

        /** The webhook's id. */
        public var webhookId: String


        public var parameters: [String : String] { [:] }

        public var headers: [String : String] { [:] }


        //public static let service = APIService<Response>(id: "patchListsIdWebhooksId", tag: "lists", method: "PATCH", path: "/lists/{list_id}/webhooks/{webhook_id}", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

        public typealias SuccessType = ListWebhooksModel
        public typealias BodyType =  AddWebhookModel


        public let body: AddWebhookModel
    }
}
