import Foundation
import PrchModel

public extension Ecommerce {
  /**
   Add or update customer

   Add or update a customer.
   */
  struct PutEcommerceStoresIdCustomersId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}/customers/{customer_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)").replacingOccurrences(of: "{" + "customer_id" + "}", with: "\(customerId)")
    }

    public var method: RequestMethod {
      .PUT
    }

    /** The store id. */
    public var storeId: String

    /** The id for the customer of a store. */
    public var customerId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "putEcommerceStoresIdCustomersId", tag: "ecommerce", method: "PUT", path: "/ecommerce/stores/{store_id}/customers/{customer_id}", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = ECommerceCustomerModel
    public typealias BodyType = ECommerceCustomer4Model

    public let body: ECommerceCustomer4Model
  }
}
