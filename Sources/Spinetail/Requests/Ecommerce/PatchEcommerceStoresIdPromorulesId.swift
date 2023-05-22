import Foundation
import PrchModel

public extension Ecommerce {
  /**
   Update promo rule

   Update a promo rule.
   */
  struct PatchEcommerceStoresIdPromorulesId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}/promo-rules/{promo_rule_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)").replacingOccurrences(of: "{" + "promo_rule_id" + "}", with: "\(promoRuleId)")
    }

    public var method: RequestMethod {
      .PATCH
    }

    /** The store id. */
    public var storeId: String

    /** The id for the promo rule of a store. */
    public var promoRuleId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "patchEcommerceStoresIdPromorulesId", tag: "ecommerce", method: "PATCH", path: "/ecommerce/stores/{store_id}/promo-rules/{promo_rule_id}", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = ECommercePromoRuleModel
    public typealias BodyType = ECommercePromoRule2Model

    public let body: ECommercePromoRule2Model
  }
}
