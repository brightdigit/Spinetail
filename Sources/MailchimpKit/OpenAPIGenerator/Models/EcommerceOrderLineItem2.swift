import Foundation

/** Information about a specific order line. */

public struct EcommerceOrderLineItem2: Codable {
  /** A unique identifier for the order line item. */
  public var _id: String
  /** A unique identifier for the product associated with the order line item. */
  public var productId: String
  /** A unique identifier for the product variant associated with the order line item. */
  public var productVariantId: String
  /** The quantity of an order line item. */
  public var quantity: Int
  /** The price of an order line item. */
  public var price: Decimal
  /** The total discount amount applied to this line item. */
  public var discount: Decimal?

  public init(_id: String, productId: String, productVariantId: String, quantity: Int, price: Decimal, discount: Decimal? = nil) {
    self._id = _id
    self.productId = productId
    self.productVariantId = productVariantId
    self.quantity = quantity
    self.price = price
    self.discount = discount
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case productId = "product_id"
    case productVariantId = "product_variant_id"
    case quantity
    case price
    case discount
  }
}
