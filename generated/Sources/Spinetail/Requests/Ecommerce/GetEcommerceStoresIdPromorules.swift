//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import PrchModel

extension STEcommerce {

    /**
    List promo rules

    Get information about a store's promo rules.
    */
    public struct GetEcommerceStoresIdPromorules : ServiceCall {
        public static var requiresCredentials: Bool {
            return false
        }
        public typealias ServiceAPI = SpinetailAPI

        public static let pathTemplate = "/ecommerce/stores/{store_id}/promo-rules"

        public var path: String {
            return Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(self.storeId)")
        }

        public var method : RequestMethod {
            .GET
        }


        /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
        public var fields: [String]?

        /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
        public var excludeFields: [String]?

        /** The number of records to return. Default value is 10. Maximum value is 1000 */
        public var count: Int?

        /** Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. */
        public var offset: Int?

        /** The store id. */
        public var storeId: String


        public var parameters: [String : String] {
            var params: [String: String] = [:]
            if let fields = self.fields?.joined(separator: ",") {
              params["fields"] = String(describing: fields)
            }
            if let excludeFields = self.excludeFields?.joined(separator: ",") {
              params["exclude_fields"] = String(describing: excludeFields)
            }
            if let count = self.count {
              params["count"] = String(describing: count)
            }
            if let offset = self.offset {
              params["offset"] = String(describing: offset)
            }
            return params
        }

        public var headers: [String : String] { [:] }


        //public static let service = APIService<Response>(id: "getEcommerceStoresIdPromorules", tag: "ecommerce", method: "GET", path: "/ecommerce/stores/{store_id}/promo-rules", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

        public typealias SuccessType = PromoRulesModel
        public typealias BodyType =  Empty

    }
}
