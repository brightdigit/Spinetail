import Foundation

/** Information about a specific order line. */

public struct EcommerceOrderLineItem1: Codable {
  /** A unique identifier for the product associated with the order line item. */
  public var productId: String?
  /** A unique identifier for the product variant associated with the order line item. */
  public var productVariantId: String?
  /** The quantity of an order line item. */
  public var quantity: Int?
  /** The price of an order line item. */
  public var price: Decimal?
  /** The total discount amount applied to this line item. */
  public var discount: Decimal?

  public init(productId: String? = nil, productVariantId: String? = nil, quantity: Int? = nil, price: Decimal? = nil, discount: Decimal? = nil) {
    self.productId = productId
    self.productVariantId = productVariantId
    self.quantity = quantity
    self.price = price
    self.discount = discount
  }

  public enum CodingKeys: String, CodingKey {
    case productId = "product_id"
    case productVariantId = "product_variant_id"
    case quantity
    case price
    case discount
  }
}
