import Foundation

/** Information about a specific cart line item. */

public struct EcommerceCartLineItem5: Codable {
  /** A unique identifier for the cart line item. */
  public var _id: String?
  /** A unique identifier for the product associated with the cart line item. */
  public var productId: String?
  /** The name of the product for the cart line item. */
  public var productTitle: String?
  /** A unique identifier for the product variant associated with the cart line item. */
  public var productVariantId: String?
  /** The name of the product variant for the cart line item. */
  public var productVariantTitle: String?
  /** The quantity of a cart line item. */
  public var quantity: Int?
  /** The price of a cart line item. */
  public var price: Decimal?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(_id: String? = nil, productId: String? = nil, productTitle: String? = nil, productVariantId: String? = nil, productVariantTitle: String? = nil, quantity: Int? = nil, price: Decimal? = nil, links: [ResourceLink]? = nil) {
    self._id = _id
    self.productId = productId
    self.productTitle = productTitle
    self.productVariantId = productVariantId
    self.productVariantTitle = productVariantTitle
    self.quantity = quantity
    self.price = price
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case productId = "product_id"
    case productTitle = "product_title"
    case productVariantId = "product_variant_id"
    case productVariantTitle = "product_variant_title"
    case quantity
    case price
    case links = "_links"
  }
}
