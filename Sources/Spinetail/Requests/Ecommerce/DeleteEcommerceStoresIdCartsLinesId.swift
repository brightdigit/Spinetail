import Foundation
import PrchModel

public extension AutomationsAutomationsEcommerce {
  /**
   Delete cart line item

   Delete a specific cart line item.
   */
  struct DeleteEcommerceStoresIdCartsLinesId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}/carts/{cart_id}/lines/{line_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)").replacingOccurrences(of: "{" + "cart_id" + "}", with: "\(cartId)").replacingOccurrences(of: "{" + "line_id" + "}", with: "\(lineId)")
    }

    public var method: RequestMethod {
      .DELETE
    }

    /** The store id. */
    public var storeId: String

    /** The id for the cart. */
    public var cartId: String

    /** The id for the line item of a cart. */
    public var lineId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "deleteEcommerceStoresIdCartsLinesId", tag: "ecommerce", method: "DELETE", path: "/ecommerce/stores/{store_id}/carts/{cart_id}/lines/{line_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = Empty
    public typealias BodyType = Empty
  }
}
