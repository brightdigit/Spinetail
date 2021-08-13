import Foundation

/** Batch update list members. */

public struct BatchUpdateListMembers: Codable {
  /** An array of objects, each representing a new member that was added to the list. */
  public var newMembers: [ListMembers5]?
  /** An array of objects, each representing an existing list member whose subscription status was updated. */
  public var updatedMembers: [ListMembers5]?
  /** An array of objects, each representing an email address that could not be added to the list or updated and an error message providing more details. */
  public var errors: [BatchUpdateListMembersErrors]?
  /** The total number of items matching the query, irrespective of pagination. */
  public var totalCreated: Int?
  /** The total number of items matching the query, irrespective of pagination. */
  public var totalUpdated: Int?
  /** The total number of items matching the query, irrespective of pagination. */
  public var errorCount: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(newMembers: [ListMembers5]? = nil, updatedMembers: [ListMembers5]? = nil, errors: [BatchUpdateListMembersErrors]? = nil, totalCreated: Int? = nil, totalUpdated: Int? = nil, errorCount: Int? = nil, links: [ResourceLink]? = nil) {
    self.newMembers = newMembers
    self.updatedMembers = updatedMembers
    self.errors = errors
    self.totalCreated = totalCreated
    self.totalUpdated = totalUpdated
    self.errorCount = errorCount
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case newMembers = "new_members"
    case updatedMembers = "updated_members"
    case errors
    case totalCreated = "total_created"
    case totalUpdated = "total_updated"
    case errorCount = "error_count"
    case links = "_links"
  }
}
