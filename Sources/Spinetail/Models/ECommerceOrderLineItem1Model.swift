import Foundation

import PrchModel
/** Information about a specific order line. */
public struct ECommerceOrderLineItem1Model: Codable, Equatable, Content {
  /** A unique identifier for the order line item. */
  public var id: String

  /** The price of an order line item. */
  public var price: Double

  /** A unique identifier for the product associated with the order line item. */
  public var productId: String

  /** A unique identifier for the product variant associated with the order line item. */
  public var productVariantId: String

  /** The quantity of an order line item. */
  public var quantity: Int

  /** The total discount amount applied to this line item. */
  public var discount: Double?

  public init(id: String, price: Double, productId: String, productVariantId: String, quantity: Int, discount: Double? = nil) {
    self.id = id
    self.price = price
    self.productId = productId
    self.productVariantId = productVariantId
    self.quantity = quantity
    self.discount = discount
  }

  public enum CodingKeys: String, CodingKey {
    case id
    case price
    case productId = "product_id"
    case productVariantId = "product_variant_id"
    case quantity
    case discount
  }
}
