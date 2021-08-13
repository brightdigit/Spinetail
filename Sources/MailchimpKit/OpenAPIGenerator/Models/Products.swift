import Foundation

/** A collection of a store&#x27;s products. */

public struct Products: Codable {
  /** The store id. */
  public var storeId: String?
  /** An array of objects, each representing a store product. */
  public var products: [EcommerceProduct3]?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(storeId: String? = nil, products: [EcommerceProduct3]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.storeId = storeId
    self.products = products
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case storeId = "store_id"
    case products
    case totalItems = "total_items"
    case links = "_links"
  }
}
