import Foundation

/** A collection of the store&#x27;s promo codes. */

public struct PromoCodes: Codable {
  /** The store id. */
  public var storeId: String?
  /** An array of objects, each representing promo codes defined for a store. */
  public var promoCodes: [EcommercePromoCode3]?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(storeId: String? = nil, promoCodes: [EcommercePromoCode3]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.storeId = storeId
    self.promoCodes = promoCodes
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case storeId = "store_id"
    case promoCodes = "promo_codes"
    case totalItems = "total_items"
    case links = "_links"
  }
}
