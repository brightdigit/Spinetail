import Foundation

/** A collection of the store&#x27;s customers. */

public struct Customers: Codable {
  /** The store id. */
  public var storeId: String?
  /** An array of objects, each representing a customer of a store. */
  public var customers: [EcommerceCustomer6]?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(storeId: String? = nil, customers: [EcommerceCustomer6]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.storeId = storeId
    self.customers = customers
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case storeId = "store_id"
    case customers
    case totalItems = "total_items"
    case links = "_links"
  }
}
