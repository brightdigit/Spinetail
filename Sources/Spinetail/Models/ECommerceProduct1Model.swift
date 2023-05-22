import Foundation

import PrchModel
/** Information about a specific product. */
public struct ECommerceProduct1Model: Codable, Equatable, Content {
  /** A unique identifier for the product. */
  public var id: String

  /** The title of a product. */
  public var title: String

  /** An array of the product's variants. At least one variant is required for each product. A variant can use the same `id` and `title` as the parent product. */
  public var variants: [ECommerceProductVariant1Model]

  /** The description of a product. */
  public var description: String?

  /** The handle of a product. */
  public var handle: String?

  /** The image URL for a product. */
  public var imageURL: String?

  /** An array of the product's images. */
  public var images: [ECommerceProductImage1Model]?

  /** The date and time the product was published. */
  public var publishedAtForeign: DateTime?

  /** The type of product. */
  public var type: String?

  /** The URL for a product. */
  public var url: String?

  /** The vendor for a product. */
  public var vendor: String?

  public init(id: String, title: String, variants: [ECommerceProductVariant1Model], description: String? = nil, handle: String? = nil, imageURL: String? = nil, images: [ECommerceProductImage1Model]? = nil, publishedAtForeign: DateTime? = nil, type: String? = nil, url: String? = nil, vendor: String? = nil) {
    self.id = id
    self.title = title
    self.variants = variants
    self.description = description
    self.handle = handle
    self.imageURL = imageURL
    self.images = images
    self.publishedAtForeign = publishedAtForeign
    self.type = type
    self.url = url
    self.vendor = vendor
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case id
    case title
    case variants
    case description
    case handle
    case imageURL = "image_url"
    case images
    case publishedAtForeign = "published_at_foreign"
    case type
    case url
    case vendor
  }
}
