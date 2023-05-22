import Foundation

import PrchModel
/** A collection of ecommerce products. */
public struct GetReportsIdEcommerceProductActivity200ResponseModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  public var products: [GetReportsIdEcommerceProductActivity200ResponseProductsInnerModel]?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, products: [GetReportsIdEcommerceProductActivity200ResponseProductsInnerModel]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.products = products
    self.totalItems = totalItems
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case products
    case totalItems = "total_items"
  }
}
