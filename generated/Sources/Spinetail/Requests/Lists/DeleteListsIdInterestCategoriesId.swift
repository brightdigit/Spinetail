//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import PrchModel

extension STLists {

    /**
    Delete interest category

    Delete a specific interest category.
    */
    public struct DeleteListsIdInterestCategoriesId : ServiceCall {
        public static var requiresCredentials: Bool {
            return false
        }
        public typealias ServiceAPI = SpinetailAPI

        public static let pathTemplate = "/lists/{list_id}/interest-categories/{interest_category_id}"

        public var path: String {
            return Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(self.listId)").replacingOccurrences(of: "{" + "interest_category_id" + "}", with: "\(self.interestCategoryId)")
        }

        public var method : RequestMethod {
            .DELETE
        }


        /** The unique ID for the list. */
        public var listId: String

        /** The unique ID for the interest category. */
        public var interestCategoryId: String


        public var parameters: [String : String] { [:] }

        public var headers: [String : String] { [:] }


        //public static let service = APIService<Response>(id: "deleteListsIdInterestCategoriesId", tag: "lists", method: "DELETE", path: "/lists/{list_id}/interest-categories/{interest_category_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

        public typealias SuccessType = Empty
        public typealias BodyType =  Empty

    }
}
