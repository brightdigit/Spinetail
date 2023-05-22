import Foundation

import PrchModel
/** Information about a specific cart line item. */
public struct ECommerceCartLineItemModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** A unique identifier for the cart line item. */
  public var id: String?

  /** The price of a cart line item. */
  public var price: Double?

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

  public init(links: [ResourceLinkModel]? = nil, id: String? = nil, price: Double? = nil, productId: String? = nil, productTitle: String? = nil, productVariantId: String? = nil, productVariantTitle: String? = nil, quantity: Int? = nil) {
    self.links = links
    self.id = id
    self.price = price
    self.productId = productId
    self.productTitle = productTitle
    self.productVariantId = productVariantId
    self.productVariantTitle = productVariantTitle
    self.quantity = quantity
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case id
    case price
    case productId = "product_id"
    case productTitle = "product_title"
    case productVariantId = "product_variant_id"
    case productVariantTitle = "product_variant_title"
    case quantity
  }
}
