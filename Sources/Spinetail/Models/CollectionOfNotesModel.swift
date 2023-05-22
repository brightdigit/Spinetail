import Foundation

import PrchModel
/** The last 10 notes for a specific list member, based on date created. */
public struct CollectionOfNotesModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** The MD5 hash of the lowercase version of the list member's email address. */
  public var emailId: String?

  /** The list id. */
  public var listId: String?

  /** An array of objects, each representing a note resource. */
  public var notes: [MemberNotesModel]?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, emailId: String? = nil, listId: String? = nil, notes: [MemberNotesModel]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.emailId = emailId
    self.listId = listId
    self.notes = notes
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case emailId = "email_id"
    case listId = "list_id"
    case notes
    case totalItems = "total_items"
  }
}
