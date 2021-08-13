import Foundation

/** A summary of batch requests that have been made. */

public struct BatchOperations: Codable {
  /** An array of objects representing batch calls. */
  public var batches: [Batch1]?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(batches: [Batch1]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.batches = batches
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case batches
    case totalItems = "total_items"
    case links = "_links"
  }
}
