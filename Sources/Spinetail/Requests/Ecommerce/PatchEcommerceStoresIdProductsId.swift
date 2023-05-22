import Foundation
import PrchModel

public extension Ecommerce {
  /**
   Update product

   Update a specific product.
   */
  struct PatchEcommerceStoresIdProductsId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}/products/{product_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)").replacingOccurrences(of: "{" + "product_id" + "}", with: "\(productId)")
    }

    public var method: RequestMethod {
      .PATCH
    }

    /** The store id. */
    public var storeId: String

    /** The id for the product of a store. */
    public var productId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "patchEcommerceStoresIdProductsId", tag: "ecommerce", method: "PATCH", path: "/ecommerce/stores/{store_id}/products/{product_id}", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = ECommerceProductModel
    public typealias BodyType = ECommerceProduct2Model

    public let body: ECommerceProduct2Model
  }
}
