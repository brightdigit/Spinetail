import Foundation

/** A collection of the store&#x27;s promo rules. */

public struct PromoRules: Codable {
  /** The store id. */
  public var storeId: String?
  /** An array of objects, each representing promo rules defined for a store. */
  public var promoRules: [EcommercePromoRule3]?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(storeId: String? = nil, promoRules: [EcommercePromoRule3]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.storeId = storeId
    self.promoRules = promoRules
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case storeId = "store_id"
    case promoRules = "promo_rules"
    case totalItems = "total_items"
    case links = "_links"
  }
}
