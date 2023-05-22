import Foundation

import PrchModel
/** A collection of subscriber lists for this account. Lists contain subscribers who have opted-in to receive correspondence from you or your organization. */
public struct SubscriberListsModel: Codable, Equatable, Content {
  /** An array of objects, each representing a list. */
  public var lists: [SubscriberListModel]

  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  public var constraints: CollectionAuthorizationModel?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(lists: [SubscriberListModel], links: [ResourceLinkModel]? = nil, constraints: CollectionAuthorizationModel? = nil, totalItems: Int? = nil) {
    self.lists = lists
    self.links = links
    self.constraints = constraints
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case lists
    case links = "_links"
    case constraints
    case totalItems = "total_items"
  }
}
