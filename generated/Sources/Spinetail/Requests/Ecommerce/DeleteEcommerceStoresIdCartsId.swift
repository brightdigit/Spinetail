//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import PrchModel

extension STEcommerce {

    /**
    Delete cart

    Delete a cart.
    */
    public struct DeleteEcommerceStoresIdCartsId : ServiceCall {
        public static var requiresCredentials: Bool {
            return false
        }
        public typealias ServiceAPI = SpinetailAPI

        public static let pathTemplate = "/ecommerce/stores/{store_id}/carts/{cart_id}"

        public var path: String {
            return Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(self.storeId)").replacingOccurrences(of: "{" + "cart_id" + "}", with: "\(self.cartId)")
        }

        public var method : RequestMethod {
            .DELETE
        }


        /** The store id. */
        public var storeId: String

        /** The id for the cart. */
        public var cartId: String


        public var parameters: [String : String] { [:] }

        public var headers: [String : String] { [:] }


        //public static let service = APIService<Response>(id: "deleteEcommerceStoresIdCartsId", tag: "ecommerce", method: "DELETE", path: "/ecommerce/stores/{store_id}/carts/{cart_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

        public typealias SuccessType = Empty
        public typealias BodyType =  Empty

    }
}
