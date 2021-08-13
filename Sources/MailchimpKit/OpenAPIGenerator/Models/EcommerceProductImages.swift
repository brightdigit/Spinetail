import Foundation

/** A collection of a product&#x27;s images. */

public struct EcommerceProductImages: Codable {
  /** The store id. */
  public var storeId: String?
  /** The product id. */
  public var productId: String?
  /** An array of objects, each representing a product image resource. */
  public var images: [EcommerceProductImage5]?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(storeId: String? = nil, productId: String? = nil, images: [EcommerceProductImage5]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.storeId = storeId
    self.productId = productId
    self.images = images
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case storeId = "store_id"
    case productId = "product_id"
    case images
    case totalItems = "total_items"
    case links = "_links"
  }
}
