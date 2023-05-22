import Foundation

import PrchModel
/** Information about a specific product. */
public struct ECommerceProduct2Model: Codable, Equatable, Content {
  /** The description of a product. */
  public var description: String?

  /** The handle of a product. */
  public var handle: String?

  /** The image URL for a product. */
  public var imageURL: String?

  /** An array of the product's images. */
  public var images: [ECommerceProductImage2Model]?

  /** The date and time the product was published in ISO 8601 format. */
  public var publishedAtForeign: DateTime?

  /** The title of a product. */
  public var title: String?

  /** The type of product. */
  public var type: String?

  /** The URL for a product. */
  public var url: String?

  /** An array of the product's variants. At least one variant is required for each product. A variant can use the same `id` and `title` as the parent product. */
  public var variants: [ECommerceProductVariant2Model]?

  /** The vendor for a product. */
  public var vendor: String?

  public init(description: String? = nil, handle: String? = nil, imageURL: String? = nil, images: [ECommerceProductImage2Model]? = nil, publishedAtForeign: DateTime? = nil, title: String? = nil, type: String? = nil, url: String? = nil, variants: [ECommerceProductVariant2Model]? = nil, vendor: String? = nil) {
    self.description = description
    self.handle = handle
    self.imageURL = imageURL
    self.images = images
    self.publishedAtForeign = publishedAtForeign
    self.title = title
    self.type = type
    self.url = url
    self.variants = variants
    self.vendor = vendor
  }

  public enum CodingKeys: String, CodingKey {
    case description
    case handle
    case imageURL = "image_url"
    case images
    case publishedAtForeign = "published_at_foreign"
    case title
    case type
    case url
    case variants
    case vendor
  }
}
