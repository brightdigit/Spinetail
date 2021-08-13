import Foundation

/** Information about a specific product variant. */

public struct EcommerceProductVariant5: Codable {
  /** The title of a product variant. */
  public var title: String?
  /** The URL for a product variant. */
  public var url: String?
  /** The stock keeping unit (SKU) of a product variant. */
  public var sku: String?
  /** The price of a product variant. */
  public var price: Decimal?
  /** The inventory quantity of a product variant. */
  public var inventoryQuantity: Int?
  /** The image URL for a product variant. */
  public var imageUrl: String?
  /** The backorders of a product variant. */
  public var backorders: String?
  /** The visibility of a product variant. */
  public var visibility: String?

  public init(title: String? = nil, url: String? = nil, sku: String? = nil, price: Decimal? = nil, inventoryQuantity: Int? = nil, imageUrl: String? = nil, backorders: String? = nil, visibility: String? = nil) {
    self.title = title
    self.url = url
    self.sku = sku
    self.price = price
    self.inventoryQuantity = inventoryQuantity
    self.imageUrl = imageUrl
    self.backorders = backorders
    self.visibility = visibility
  }

  public enum CodingKeys: String, CodingKey {
    case title
    case url
    case sku
    case price
    case inventoryQuantity = "inventory_quantity"
    case imageUrl = "image_url"
    case backorders
    case visibility
  }
}
