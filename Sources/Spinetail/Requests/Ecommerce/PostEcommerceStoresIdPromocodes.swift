import Foundation
import PrchModel

public extension Ecommerce {
  /**
   Add promo code

   Add a new promo code to a store.
   */
  struct PostEcommerceStoresIdPromocodes: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}/promo-rules/{promo_rule_id}/promo-codes"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)").replacingOccurrences(of: "{" + "promo_rule_id" + "}", with: "\(promoRuleId)")
    }

    public var method: RequestMethod {
      .POST
    }

    /** The store id. */
    public var storeId: String

    /** The id for the promo rule of a store. */
    public var promoRuleId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "postEcommerceStoresIdPromocodes", tag: "ecommerce", method: "POST", path: "/ecommerce/stores/{store_id}/promo-rules/{promo_rule_id}/promo-codes", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = ECommercePromoCodeModel
    public typealias BodyType = ECommercePromoCode1Model

    public let body: ECommercePromoCode1Model
  }
}
