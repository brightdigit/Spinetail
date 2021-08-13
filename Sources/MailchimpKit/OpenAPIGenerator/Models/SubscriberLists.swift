import Foundation

/** A collection of subscriber lists for this account. Lists contain subscribers who have opted-in to receive correspondence from you or your organization. */

public struct SubscriberLists: Codable {
  /** An array of objects, each representing a list. */
  public var lists: [SubscriberList3]
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  public var constraints: CollectionAuthorization?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(lists: [SubscriberList3], totalItems: Int? = nil, constraints: CollectionAuthorization? = nil, links: [ResourceLink]? = nil) {
    self.lists = lists
    self.totalItems = totalItems
    self.constraints = constraints
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case lists
    case totalItems = "total_items"
    case constraints
    case links = "_links"
  }
}
