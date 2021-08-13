import Foundation

/** A collection of stores in the account. */

public struct EcommerceStores: Codable {
  /** An array of objects, each representing a store. */
  public var stores: [EcommerceStore3]?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(stores: [EcommerceStore3]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.stores = stores
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case stores
    case totalItems = "total_items"
    case links = "_links"
  }
}
