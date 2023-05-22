import Foundation
import PrchModel

public extension Ecommerce {
  /**
   Add store

   Add a new store to your Mailchimp account.
   */
  struct PostEcommerceStores: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores"

    public var path: String {
      Self.pathTemplate
    }

    public var method: RequestMethod {
      .POST
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "postEcommerceStores", tag: "ecommerce", method: "POST", path: "/ecommerce/stores", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = ECommerceStoreModel
    public typealias BodyType = ECommerceStore1Model

    public let body: ECommerceStore1Model
  }
}
