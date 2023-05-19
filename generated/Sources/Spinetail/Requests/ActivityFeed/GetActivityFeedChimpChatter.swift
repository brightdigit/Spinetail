//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import PrchModel

extension STActivityFeed {

    /**
    Get latest chimp chatter

    Return the Chimp Chatter for this account ordered by most recent.
    */
    public struct GetActivityFeedChimpChatter : ServiceCall {
        public static var requiresCredentials: Bool {
            return false
        }
        public typealias ServiceAPI = SpinetailAPI

        public static let pathTemplate = "/activity-feed/chimp-chatter"

        public var path: String {
            return Self.pathTemplate
        }

        public var method : RequestMethod {
            .GET
        }


        /** The number of records to return. Default value is 10. Maximum value is 1000 */
        public var count: Int?

        /** Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. */
        public var offset: Int?


        public var parameters: [String : String] {
            var params: [String: String] = [:]
            if let count = self.count {
              params["count"] = String(describing: count)
            }
            if let offset = self.offset {
              params["offset"] = String(describing: offset)
            }
            return params
        }

        public var headers: [String : String] { [:] }


        //public static let service = APIService<Response>(id: "getActivityFeedChimpChatter", tag: "activityFeed", method: "GET", path: "/activity-feed/chimp-chatter", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

        public typealias SuccessType = GetActivityFeedChimpChatter200ResponseModel
        public typealias BodyType =  Empty

    }
}
