import Foundation
import PrchModel

public extension Ecommerce {
  /**
   Add cart line item

   Add a new line item to an existing cart.
   */
  struct PostEcommerceStoresIdCartsIdLines: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}/carts/{cart_id}/lines"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)").replacingOccurrences(of: "{" + "cart_id" + "}", with: "\(cartId)")
    }

    public var method: RequestMethod {
      .POST
    }

    /** The store id. */
    public var storeId: String

    /** The id for the cart. */
    public var cartId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "postEcommerceStoresIdCartsIdLines", tag: "ecommerce", method: "POST", path: "/ecommerce/stores/{store_id}/carts/{cart_id}/lines", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = ECommerceCartLineItemModel
    public typealias BodyType = ECommerceCartLineItem1Model

    public let body: ECommerceCartLineItem1Model
  }
}
