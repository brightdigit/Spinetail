import Foundation
import PrchModel

public extension Ecommerce {
  /**
   Add customer

   Add a new customer to a store.
   */
  struct PostEcommerceStoresIdCustomers: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}/customers"

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

    // public static let service = APIService<Response>(id: "postEcommerceStoresIdCustomers", tag: "ecommerce", method: "POST", path: "/ecommerce/stores/{store_id}/customers", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = ECommerceCustomerModel
    public typealias BodyType = ECommerceCustomer3Model

    public let body: ECommerceCustomer3Model
  }
}
