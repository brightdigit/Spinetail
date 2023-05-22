import Foundation

import PrchModel
/** Information about a specific cart line item. */
public struct ECommerceCartLineItem1Model: Codable, Equatable, Content {
  /** A unique identifier for the cart line item. */
  public var id: String

  /** The price of a cart line item. */
  public var price: Double

  /** A unique identifier for the product associated with the cart line item. */
  public var productId: String

  /** A unique identifier for the product variant associated with the cart line item. */
  public var productVariantId: String

  /** The quantity of a cart line item. */
  public var quantity: Int

  public init(id: String, price: Double, productId: String, productVariantId: String, quantity: Int) {
    self.id = id
    self.price = price
    self.productId = productId
    self.productVariantId = productVariantId
    self.quantity = quantity
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case id
    case price
    case productId = "product_id"
    case productVariantId = "product_variant_id"
    case quantity
  }
}
