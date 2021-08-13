import Foundation

/** Information about a specific product. */

public struct EcommerceProduct1: Codable {
  /** A unique identifier for the product. */
  public var _id: String?
  /** The currency code */
  public var currencyCode: String?
  /** The title of a product. */
  public var title: String?
  /** The handle of a product. */
  public var handle: String?
  /** The URL for a product. */
  public var url: String?
  /** The description of a product. */
  public var _description: String?
  /** The type of product. */
  public var type: String?
  /** The vendor for a product. */
  public var vendor: String?
  /** The image URL for a product. */
  public var imageUrl: String?
  /** Returns up to 50 of the product&#x27;s variants. To retrieve all variants use [Product Variants](https://mailchimp.com/developer/marketing/api/ecommerce-product-variants/). */
  public var variants: [EcommerceProductVariant6]?
  /** An array of the product&#x27;s images. */
  public var images: [EcommerceProductImage5]?
  /** The date and time the product was published in ISO 8601 format. */
  public var publishedAtForeign: Date?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(_id: String? = nil, currencyCode: String? = nil, title: String? = nil, handle: String? = nil, url: String? = nil, _description: String? = nil, type: String? = nil, vendor: String? = nil, imageUrl: String? = nil, variants: [EcommerceProductVariant6]? = nil, images: [EcommerceProductImage5]? = nil, publishedAtForeign: Date? = nil, links: [ResourceLink]? = nil) {
    self._id = _id
    self.currencyCode = currencyCode
    self.title = title
    self.handle = handle
    self.url = url
    self._description = _description
    self.type = type
    self.vendor = vendor
    self.imageUrl = imageUrl
    self.variants = variants
    self.images = images
    self.publishedAtForeign = publishedAtForeign
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case currencyCode = "currency_code"
    case title
    case handle
    case url
    case _description = "description"
    case type
    case vendor
    case imageUrl = "image_url"
    case variants
    case images
    case publishedAtForeign = "published_at_foreign"
    case links = "_links"
  }
}
