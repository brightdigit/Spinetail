import Foundation

import PrchModel
/** A collection of a store's products. */
public struct ProductsModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** An array of objects, each representing a store product. */
  public var products: [ECommerceProductModel]?

  /** The store id. */
  public var storeId: String?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, products: [ECommerceProductModel]? = nil, storeId: String? = nil, totalItems: Int? = nil) {
    self.links = links
    self.products = products
    self.storeId = storeId
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case products
    case storeId = "store_id"
    case totalItems = "total_items"
  }
}
