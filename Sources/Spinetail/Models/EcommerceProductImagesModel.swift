import Foundation

import PrchModel
/** A collection of a product's images. */
public struct EcommerceProductImagesModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** An array of objects, each representing a product image resource. */
  public var images: [ECommerceProductImageModel]?

  /** The product id. */
  public var productId: String?

  /** The store id. */
  public var storeId: String?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, images: [ECommerceProductImageModel]? = nil, productId: String? = nil, storeId: String? = nil, totalItems: Int? = nil) {
    self.links = links
    self.images = images
    self.productId = productId
    self.storeId = storeId
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case images
    case productId = "product_id"
    case storeId = "store_id"
    case totalItems = "total_items"
  }
}
