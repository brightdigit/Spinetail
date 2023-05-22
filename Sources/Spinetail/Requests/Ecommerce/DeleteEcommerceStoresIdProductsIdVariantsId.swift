import Foundation
import PrchModel

public extension AutomationsAutomationsEcommerce {
  /**
   Delete product variant

   Delete a product variant.
   */
  struct DeleteEcommerceStoresIdProductsIdVariantsId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}/products/{product_id}/variants/{variant_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)").replacingOccurrences(of: "{" + "product_id" + "}", with: "\(productId)").replacingOccurrences(of: "{" + "variant_id" + "}", with: "\(variantId)")
    }

    public var method: RequestMethod {
      .DELETE
    }

    /** The store id. */
    public var storeId: String

    /** The id for the product of a store. */
    public var productId: String

    /** The id for the product variant. */
    public var variantId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "deleteEcommerceStoresIdProductsIdVariantsId", tag: "ecommerce", method: "DELETE", path: "/ecommerce/stores/{store_id}/products/{product_id}/variants/{variant_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = Empty
    public typealias BodyType = Empty
  }
}
