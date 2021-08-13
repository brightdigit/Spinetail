import Foundation

/** Information about a specific order line. */

public struct EcommerceOrderLineItem3: Codable {
  /** A unique identifier for an order line item. */
  public var _id: String?
  /** A unique identifier for the product associated with an order line item. */
  public var productId: String?
  /** The name of the product for an order line item. */
  public var productTitle: String?
  /** A unique identifier for the product variant associated with an order line item. */
  public var productVariantId: String?
  /** The name of the product variant for an order line item. */
  public var productVariantTitle: String?
  /** The image URL for a product. */
  public var imageUrl: String?
  /** The order line item quantity. */
  public var quantity: Int?
  /** The order line item price. */
  public var price: Decimal?
  /** The total discount amount applied to a line item. */
  public var discount: Decimal?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(_id: String? = nil, productId: String? = nil, productTitle: String? = nil, productVariantId: String? = nil, productVariantTitle: String? = nil, imageUrl: String? = nil, quantity: Int? = nil, price: Decimal? = nil, discount: Decimal? = nil, links: [ResourceLink]? = nil) {
    self._id = _id
    self.productId = productId
    self.productTitle = productTitle
    self.productVariantId = productVariantId
    self.productVariantTitle = productVariantTitle
    self.imageUrl = imageUrl
    self.quantity = quantity
    self.price = price
    self.discount = discount
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case productId = "product_id"
    case productTitle = "product_title"
    case productVariantId = "product_variant_id"
    case productVariantTitle = "product_variant_title"
    case imageUrl = "image_url"
    case quantity
    case price
    case discount
    case links = "_links"
  }
}
