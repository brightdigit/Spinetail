import Foundation
import PrchModel

public extension AutomationsAutomationsEcommerce {
  /**
   Update cart

   Update a specific cart.
   */
  struct PatchEcommerceStoresIdCartsId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}/carts/{cart_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)").replacingOccurrences(of: "{" + "cart_id" + "}", with: "\(cartId)")
    }

    public var method: RequestMethod {
      .PATCH
    }

    /** The store id. */
    public var storeId: String

    /** The id for the cart. */
    public var cartId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "patchEcommerceStoresIdCartsId", tag: "ecommerce", method: "PATCH", path: "/ecommerce/stores/{store_id}/carts/{cart_id}", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = ECommerceCartModel
    public typealias BodyType = ECommerceCart2Model

    public let body: ECommerceCart2Model
  }
}
