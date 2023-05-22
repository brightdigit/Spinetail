import Foundation
import PrchModel

public extension Ecommerce {
  /**
   Update store

   Update a store.
   */
  struct PatchEcommerceStoresId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)")
    }

    public var method: RequestMethod {
      .PATCH
    }

    /** The store id. */
    public var storeId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "patchEcommerceStoresId", tag: "ecommerce", method: "PATCH", path: "/ecommerce/stores/{store_id}", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = ECommerceStoreModel
    public typealias BodyType = ECommerceStore2Model

    public let body: ECommerceStore2Model
  }
}
