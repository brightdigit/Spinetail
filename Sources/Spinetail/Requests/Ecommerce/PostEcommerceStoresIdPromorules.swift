import Foundation
import PrchModel

public extension AutomationsAutomationsEcommerce {
  /**
   Add promo rule

   Add a new promo rule to a store.
   */
  struct PostEcommerceStoresIdPromorules: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}/promo-rules"

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

    // public static let service = APIService<Response>(id: "postEcommerceStoresIdPromorules", tag: "ecommerce", method: "POST", path: "/ecommerce/stores/{store_id}/promo-rules", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = ECommercePromoRuleModel
    public typealias BodyType = ECommercePromoRule1Model

    public let body: ECommercePromoRule1Model
  }
}
