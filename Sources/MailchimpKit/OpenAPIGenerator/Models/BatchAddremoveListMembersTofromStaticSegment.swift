import Foundation

/** Batch add/remove List members to/from static segment */

public struct BatchAddremoveListMembersTofromStaticSegment: Codable {
  /** An array of objects, each representing a new member that was added to the static segment. */
  public var membersAdded: [ListMembers5]?
  /** An array of objects, each representing an existing list member that got deleted from the static segment. */
  public var membersRemoved: [ListMembers5]?
  /** An array of objects, each representing an array of email addresses that could not be added to the segment or removed and an error message providing more details. */
  public var errors: [BatchAddremoveListMembersTofromStaticSegmentErrors]?
  /** The total number of items matching the query, irrespective of pagination. */
  public var totalAdded: Int?
  /** The total number of items matching the query, irrespective of pagination. */
  public var totalRemoved: Int?
  /** The total number of items matching the query, irrespective of pagination. */
  public var errorCount: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(membersAdded: [ListMembers5]? = nil, membersRemoved: [ListMembers5]? = nil, errors: [BatchAddremoveListMembersTofromStaticSegmentErrors]? = nil, totalAdded: Int? = nil, totalRemoved: Int? = nil, errorCount: Int? = nil, links: [ResourceLink]? = nil) {
    self.membersAdded = membersAdded
    self.membersRemoved = membersRemoved
    self.errors = errors
    self.totalAdded = totalAdded
    self.totalRemoved = totalRemoved
    self.errorCount = errorCount
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case membersAdded = "members_added"
    case membersRemoved = "members_removed"
    case errors
    case totalAdded = "total_added"
    case totalRemoved = "total_removed"
    case errorCount = "error_count"
    case links = "_links"
  }
}
