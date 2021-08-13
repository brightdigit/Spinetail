import Foundation

/** Exact matches of the provided search query. */

public struct ExactMatches: Codable {
  /** An array of objects, each representing a specific list member. */
  public var members: [ListMembers4]?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(members: [ListMembers4]? = nil, totalItems: Int? = nil) {
    self.members = members
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case members
    case totalItems = "total_items"
  }
}
