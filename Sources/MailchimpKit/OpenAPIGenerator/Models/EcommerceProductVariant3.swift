import Foundation

/** Information about a specific product variant. */

public struct EcommerceProductVariant3: Codable {
  /** A unique identifier for the product variant. */
  public var _id: String?
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
  /** The date and time the product was created in ISO 8601 format. */
  public var createdAt: Date?
  /** The date and time the product was last updated in ISO 8601 format. */
  public var updatedAt: Date?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(_id: String? = nil, title: String? = nil, url: String? = nil, sku: String? = nil, price: Decimal? = nil, inventoryQuantity: Int? = nil, imageUrl: String? = nil, backorders: String? = nil, visibility: String? = nil, createdAt: Date? = nil, updatedAt: Date? = nil, links: [ResourceLink]? = nil) {
    self._id = _id
    self.title = title
    self.url = url
    self.sku = sku
    self.price = price
    self.inventoryQuantity = inventoryQuantity
    self.imageUrl = imageUrl
    self.backorders = backorders
    self.visibility = visibility
    self.createdAt = createdAt
    self.updatedAt = updatedAt
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case title
    case url
    case sku
    case price
    case inventoryQuantity = "inventory_quantity"
    case imageUrl = "image_url"
    case backorders
    case visibility
    case createdAt = "created_at"
    case updatedAt = "updated_at"
    case links = "_links"
  }
}
