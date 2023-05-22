import Foundation
import PrchModel

public extension AutomationsAutomationsEcommerce {
  /**
   Update cart line item

   Update a specific cart line item.
   */
  struct PatchEcommerceStoresIdCartsIdLinesId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}/carts/{cart_id}/lines/{line_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)").replacingOccurrences(of: "{" + "cart_id" + "}", with: "\(cartId)").replacingOccurrences(of: "{" + "line_id" + "}", with: "\(lineId)")
    }

    public var method: RequestMethod {
      .PATCH
    }

    /** The store id. */
    public var storeId: String

    /** The id for the cart. */
    public var cartId: String

    /** The id for the line item of a cart. */
    public var lineId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "patchEcommerceStoresIdCartsIdLinesId", tag: "ecommerce", method: "PATCH", path: "/ecommerce/stores/{store_id}/carts/{cart_id}/lines/{line_id}", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = ECommerceCartLineItemModel
    public typealias BodyType = ECommerceCartLineItem2Model

    public let body: ECommerceCartLineItem2Model
  }
}
