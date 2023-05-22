import Foundation

import PrchModel
/** A collection of the store's promo codes. */
public struct PromoCodesModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** An array of objects, each representing promo codes defined for a store. */
  public var promoCodes: [ECommercePromoCodeModel]?

  /** The store id. */
  public var storeId: String?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, promoCodes: [ECommercePromoCodeModel]? = nil, storeId: String? = nil, totalItems: Int? = nil) {
    self.links = links
    self.promoCodes = promoCodes
    self.storeId = storeId
    self.totalItems = totalItems
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case promoCodes = "promo_codes"
    case storeId = "store_id"
    case totalItems = "total_items"
  }
}
