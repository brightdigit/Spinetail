import Foundation

import PrchModel
/** Information about a specific product variant. */
public struct ECommerceProductVariant2Model: Codable, Equatable, Content {
  /** The backorders of a product variant. */
  public var backorders: String?

  /** The image URL for a product variant. */
  public var imageURL: String?

  /** The inventory quantity of a product variant. */
  public var inventoryQuantity: Int?

  /** The price of a product variant. */
  public var price: Double?

  /** The stock keeping unit (SKU) of a product variant. */
  public var sku: String?

  /** The title of a product variant. */
  public var title: String?

  /** The URL for a product variant. */
  public var url: String?

  /** The visibility of a product variant. */
  public var visibility: String?

  public init(backorders: String? = nil, imageURL: String? = nil, inventoryQuantity: Int? = nil, price: Double? = nil, sku: String? = nil, title: String? = nil, url: String? = nil, visibility: String? = nil) {
    self.backorders = backorders
    self.imageURL = imageURL
    self.inventoryQuantity = inventoryQuantity
    self.price = price
    self.sku = sku
    self.title = title
    self.url = url
    self.visibility = visibility
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case backorders
    case imageURL = "image_url"
    case inventoryQuantity = "inventory_quantity"
    case price
    case sku
    case title
    case url
    case visibility
  }
}
