//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import PrchModel

extension STEcommerce {

    /**
    Delete promo code

    Delete a promo code from a store.
    */
    public struct DeleteEcommerceStoresIdPromocodesId : ServiceCall {
        public static var requiresCredentials: Bool {
            return false
        }
        public typealias ServiceAPI = SpinetailAPI

        public static let pathTemplate = "/ecommerce/stores/{store_id}/promo-rules/{promo_rule_id}/promo-codes/{promo_code_id}"

        public var path: String {
            return Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(self.storeId)").replacingOccurrences(of: "{" + "promo_rule_id" + "}", with: "\(self.promoRuleId)").replacingOccurrences(of: "{" + "promo_code_id" + "}", with: "\(self.promoCodeId)")
        }

        public var method : RequestMethod {
            .DELETE
        }


        /** The store id. */
        public var storeId: String

        /** The id for the promo rule of a store. */
        public var promoRuleId: String

        /** The id for the promo code of a store. */
        public var promoCodeId: String


        public var parameters: [String : String] { [:] }

        public var headers: [String : String] { [:] }


        //public static let service = APIService<Response>(id: "deleteEcommerceStoresIdPromocodesId", tag: "ecommerce", method: "DELETE", path: "/ecommerce/stores/{store_id}/promo-rules/{promo_rule_id}/promo-codes/{promo_code_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

        public typealias SuccessType = Empty
        public typealias BodyType =  Empty

    }
}
