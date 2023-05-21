//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import PrchModel

extension Conversations {

    /**
    Get message

    Get an individual message in a conversation. Conversations has been deprecated in favor of Inbox and these endpoints don't include Inbox data. Past Conversations are still available via this endpoint, but new campaign replies and other Inbox messages aren’t available using this endpoint.
    */
    public struct GetConversationsIdMessagesId : ServiceCall {
        public static var requiresCredentials: Bool {
            return false
        }
        public typealias ServiceAPI = SpinetailAPI

        public static let pathTemplate = "/conversations/{conversation_id}/messages/{message_id}"

        public var path: String {
            return Self.pathTemplate.replacingOccurrences(of: "{" + "conversation_id" + "}", with: "\(self.conversationId)").replacingOccurrences(of: "{" + "message_id" + "}", with: "\(self.messageId)")
        }

        public var method : RequestMethod {
            .GET
        }


        /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
        public var fields: [String]?

        /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
        public var excludeFields: [String]?

        /** The unique id for the conversation. */
        public var conversationId: String

        /** The unique id for the conversation message. */
        public var messageId: String


        public var parameters: [String : String] {
            var params: [String: String] = [:]
            if let fields = self.fields?.joined(separator: ",") {
              params["fields"] = String(describing: fields)
            }
            if let excludeFields = self.excludeFields?.joined(separator: ",") {
              params["exclude_fields"] = String(describing: excludeFields)
            }
            return params
        }

        public var headers: [String : String] { [:] }


        //public static let service = APIService<Response>(id: "getConversationsIdMessagesId", tag: "conversations", method: "GET", path: "/conversations/{conversation_id}/messages/{message_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

        public typealias SuccessType = ConversationMessageModel
        public typealias BodyType =  Empty

    }
}
