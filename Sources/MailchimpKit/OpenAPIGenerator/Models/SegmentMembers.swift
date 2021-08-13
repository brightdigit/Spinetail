import Foundation

/** View members in a specific list segment. */

public struct SegmentMembers: Codable {
  /** An array of objects, each representing a specific list member. */
  public var members: [ListMembers3]?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(members: [ListMembers3]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.members = members
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case members
    case totalItems = "total_items"
    case links = "_links"
  }
}
