import Foundation

/** Manage members of a specific Mailchimp list, including currently subscribed, unsubscribed, and bounced members. */

public struct ListMembers1: Codable {
  /** An array of objects, each representing a specific list member. */
  public var members: [ListMembers4]?
  /** The list id. */
  public var listId: String?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(members: [ListMembers4]? = nil, listId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.members = members
    self.listId = listId
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case members
    case listId = "list_id"
    case totalItems = "total_items"
    case links = "_links"
  }
}
