import Foundation
import PrchModel

public extension AutomationsAutomationsEcommerce {
  /**
   Add order

   Add a new order to a store.
   */
  struct PostEcommerceStoresIdOrders: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}/orders"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)")
    }

    public var method: RequestMethod {
      .POST
    }

    /** The store id. */
    public var storeId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "postEcommerceStoresIdOrders", tag: "ecommerce", method: "POST", path: "/ecommerce/stores/{store_id}/orders", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = ECommerceOrderModel
    public typealias BodyType = ECommerceOrder1Model

    public let body: ECommerceOrder1Model
  }
}
