import Foundation

/** Information about a specific product image. */

public struct EcommerceProductImage1: Codable {
  /** A unique identifier for the product image. */
  public var _id: String?
  /** The URL for a product image. */
  public var url: String?
  /** The list of product variants using the image. */
  public var variantIds: [String]?

  public init(_id: String? = nil, url: String? = nil, variantIds: [String]? = nil) {
    self._id = _id
    self.url = url
    self.variantIds = variantIds
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case url
    case variantIds = "variant_ids"
  }
}
