import Foundation
import PrchModel

public extension AutomationsAutomationsEcommerce {
  /**
   Update order

   Update a specific order.
   */
  struct PatchEcommerceStoresIdOrdersId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}/orders/{order_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)").replacingOccurrences(of: "{" + "order_id" + "}", with: "\(orderId)")
    }

    public var method: RequestMethod {
      .PATCH
    }

    /** The store id. */
    public var storeId: String

    /** The id for the order in a store. */
    public var orderId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "patchEcommerceStoresIdOrdersId", tag: "ecommerce", method: "PATCH", path: "/ecommerce/stores/{store_id}/orders/{order_id}", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = ECommerceOrderModel
    public typealias BodyType = ECommerceOrder2Model

    public let body: ECommerceOrder2Model
  }
}
