//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import PrchModel

extension STEcommerce {

    /**
    Delete product

    Delete a product.
    */
    public struct DeleteEcommerceStoresIdProductsId : ServiceCall {
        public static var requiresCredentials: Bool {
            return false
        }
        public typealias ServiceAPI = SpinetailAPI

        public static let pathTemplate = "/ecommerce/stores/{store_id}/products/{product_id}"

        public var path: String {
            return Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(self.storeId)").replacingOccurrences(of: "{" + "product_id" + "}", with: "\(self.productId)")
        }

        public var method : RequestMethod {
            .DELETE
        }


        /** The store id. */
        public var storeId: String

        /** The id for the product of a store. */
        public var productId: String


        public var parameters: [String : String] { [:] }

        public var headers: [String : String] { [:] }


        //public static let service = APIService<Response>(id: "deleteEcommerceStoresIdProductsId", tag: "ecommerce", method: "DELETE", path: "/ecommerce/stores/{store_id}/products/{product_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

        public typealias SuccessType = Empty
        public typealias BodyType =  Empty

    }
}
