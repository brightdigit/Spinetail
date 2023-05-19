//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import PrchModel

extension STLists {

    /**
    Get information about all surveys for a list

    Get information about all available surveys for a specific list.
    */
    public struct GetListsIdSurveys : ServiceCall {
        public static var requiresCredentials: Bool {
            return false
        }
        public typealias ServiceAPI = SpinetailAPI

        public static let pathTemplate = "/lists/{list_id}/surveys"

        public var path: String {
            return Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(self.listId)")
        }

        public var method : RequestMethod {
            .GET
        }


        /** The unique ID for the list. */
        public var listId: String


        public var parameters: [String : String] { [:] }

        public var headers: [String : String] { [:] }


        //public static let service = APIService<Response>(id: "getListsIdSurveys", tag: "lists", method: "GET", path: "/lists/{list_id}/surveys", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

        public typealias SuccessType = Empty
        public typealias BodyType =  Empty

    }
}
