import Foundation

/** Information about a specific cart line item. */

public struct EcommerceCartLineItem2: Codable {
  /** A unique identifier for the cart line item. */
  public var _id: String
  /** A unique identifier for the product associated with the cart line item. */
  public var productId: String
  /** A unique identifier for the product variant associated with the cart line item. */
  public var productVariantId: String
  /** The quantity of a cart line item. */
  public var quantity: Int
  /** The price of a cart line item. */
  public var price: Decimal

  public init(_id: String, productId: String, productVariantId: String, quantity: Int, price: Decimal) {
    self._id = _id
    self.productId = productId
    self.productVariantId = productVariantId
    self.quantity = quantity
    self.price = price
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case productId = "product_id"
    case productVariantId = "product_variant_id"
    case quantity
    case price
  }
}
