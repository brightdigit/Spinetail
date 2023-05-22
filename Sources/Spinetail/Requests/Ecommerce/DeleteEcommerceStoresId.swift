import Foundation
import PrchModel

extension Dictionary: ContentEncodable where Key: Encodable, Value: Encodable {}

extension Dictionary: ContentDecodable where Key: Decodable, Value: Decodable {}

public extension Ecommerce {
  /**
   Delete store

   Delete a store. Deleting a store will also delete any associated subresources, including Customers, Orders, Products, and Carts.
   */
  struct DeleteEcommerceStoresId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)")
    }

    public var method: RequestMethod {
      .DELETE
    }

    /** The store id. */
    public var storeId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "deleteEcommerceStoresId", tag: "ecommerce", method: "DELETE", path: "/ecommerce/stores/{store_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = [String: String]
    public typealias BodyType = Empty
  }
}
