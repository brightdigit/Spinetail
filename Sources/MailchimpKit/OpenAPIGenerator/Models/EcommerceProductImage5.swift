import Foundation

/** Information about a specific product image. */

public struct EcommerceProductImage5: Codable {
  /** A unique identifier for the product image. */
  public var _id: String?
  /** The URL for a product image. */
  public var url: String?
  /** The list of product variants using the image. */
  public var variantIds: [String]?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(_id: String? = nil, url: String? = nil, variantIds: [String]? = nil, links: [ResourceLink]? = nil) {
    self._id = _id
    self.url = url
    self.variantIds = variantIds
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case url
    case variantIds = "variant_ids"
    case links = "_links"
  }
}
