import Foundation

import PrchModel
/** Information about a specific product image. */
public struct ECommerceProductImage2Model: Codable, Equatable, Content {
  /** A unique identifier for the product image. */
  public var id: String?

  /** The URL for a product image. */
  public var url: String?

  /** The list of product variants using the image. */
  public var variantIds: [String]?

  public init(id: String? = nil, url: String? = nil, variantIds: [String]? = nil) {
    self.id = id
    self.url = url
    self.variantIds = variantIds
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case id
    case url
    case variantIds = "variant_ids"
  }
}
