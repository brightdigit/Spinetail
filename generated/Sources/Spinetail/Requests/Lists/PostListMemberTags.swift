//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import PrchModel

extension STLists {

    /**
    Add or remove member tags

    Add or remove tags from a list member. If a tag that does not exist is passed in and set as 'active', a new tag will be created.
    */
    public struct PostListMemberTags : ServiceCall {
        public static var requiresCredentials: Bool {
            return false
        }
        public typealias ServiceAPI = SpinetailAPI

        public static let pathTemplate = "/lists/{list_id}/members/{subscriber_hash}/tags"

        public var path: String {
            return Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(self.listId)").replacingOccurrences(of: "{" + "subscriber_hash" + "}", with: "\(self.subscriberHash)")
        }

        public var method : RequestMethod {
            .POST
        }


        /** The unique ID for the list. */
        public var listId: String

        /** The MD5 hash of the lowercase version of the list member's email address. */
        public var subscriberHash: String


        public var parameters: [String : String] { [:] }

        public var headers: [String : String] { [:] }


        //public static let service = APIService<Response>(id: "postListMemberTags", tag: "lists", method: "POST", path: "/lists/{list_id}/members/{subscriber_hash}/tags", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

        public typealias SuccessType = Empty
        public typealias BodyType =  MemberTagsModel


        public let body: MemberTagsModel
    }
}
