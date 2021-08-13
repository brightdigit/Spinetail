import Foundation

/** Information about a specific cart line item. */

public struct EcommerceCartLineItem4: Codable {
  /** A unique identifier for the product associated with the cart line item. */
  public var productId: String?
  /** A unique identifier for the product variant associated with the cart line item. */
  public var productVariantId: String?
  /** The quantity of a cart line item. */
  public var quantity: Int?
  /** The price of a cart line item. */
  public var price: Decimal?

  public init(productId: String? = nil, productVariantId: String? = nil, quantity: Int? = nil, price: Decimal? = nil) {
    self.productId = productId
    self.productVariantId = productVariantId
    self.quantity = quantity
    self.price = price
  }

  public enum CodingKeys: String, CodingKey {
    case productId = "product_id"
    case productVariantId = "product_variant_id"
    case quantity
    case price
  }
}
