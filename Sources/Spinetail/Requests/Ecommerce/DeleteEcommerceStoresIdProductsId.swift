import Foundation
import PrchModel

public extension Ecommerce {
  /**
   Delete product

   Delete a product.
   */
  struct DeleteEcommerceStoresIdProductsId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}/products/{product_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)").replacingOccurrences(of: "{" + "product_id" + "}", with: "\(productId)")
    }

    public var method: RequestMethod {
      .DELETE
    }

    /** The store id. */
    public var storeId: String

    /** The id for the product of a store. */
    public var productId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = Empty
    public typealias BodyType = Empty
  }
}