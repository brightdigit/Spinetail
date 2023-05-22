import Foundation

import PrchModel
/** Batch update list members. */
public struct BatchUpdateListMembersModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** The total number of items matching the query, irrespective of pagination. */
  public var errorCount: Int?

  /** An array of objects, each representing an email address that could not be added to the list or updated and an error message providing more details. */
  public var errors: [ErrorsInnerModel]?

  /** An array of objects, each representing a new member that was added to the list. */
  public var newMembers: [ListMembersModel]?

  /** The total number of items matching the query, irrespective of pagination. */
  public var totalCreated: Int?

  /** The total number of items matching the query, irrespective of pagination. */
  public var totalUpdated: Int?

  /** An array of objects, each representing an existing list member whose subscription status was updated. */
  public var updatedMembers: [ListMembersModel]?

  public init(links: [ResourceLinkModel]? = nil, errorCount: Int? = nil, errors: [ErrorsInnerModel]? = nil, newMembers: [ListMembersModel]? = nil, totalCreated: Int? = nil, totalUpdated: Int? = nil, updatedMembers: [ListMembersModel]? = nil) {
    self.links = links
    self.errorCount = errorCount
    self.errors = errors
    self.newMembers = newMembers
    self.totalCreated = totalCreated
    self.totalUpdated = totalUpdated
    self.updatedMembers = updatedMembers
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case errorCount = "error_count"
    case errors
    case newMembers = "new_members"
    case totalCreated = "total_created"
    case totalUpdated = "total_updated"
    case updatedMembers = "updated_members"
  }
}
