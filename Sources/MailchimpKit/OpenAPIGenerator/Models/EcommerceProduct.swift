import Foundation

/** Information about a specific product. */

public struct EcommerceProduct: Codable {
  /** A unique identifier for the product. */
  public var _id: String
  /** The title of a product. */
  public var title: String
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
  /** An array of the product&#x27;s variants. At least one variant is required for each product. A variant can use the same &#x60;id&#x60; and &#x60;title&#x60; as the parent product. */
  public var variants: [EcommerceProductVariant]
  /** An array of the product&#x27;s images. */
  public var images: [EcommerceProductImage]?
  /** The date and time the product was published. */
  public var publishedAtForeign: Date?

  public init(_id: String, title: String, handle: String? = nil, url: String? = nil, _description: String? = nil, type: String? = nil, vendor: String? = nil, imageUrl: String? = nil, variants: [EcommerceProductVariant], images: [EcommerceProductImage]? = nil, publishedAtForeign: Date? = nil) {
    self._id = _id
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
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
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
  }
}
