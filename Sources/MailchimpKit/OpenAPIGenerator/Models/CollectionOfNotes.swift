import Foundation

/** The last 10 notes for a specific list member, based on date created. */

public struct CollectionOfNotes: Codable {
  /** An array of objects, each representing a note resource. */
  public var notes: [MemberNotes3]?
  /** The MD5 hash of the lowercase version of the list member&#x27;s email address. */
  public var emailId: String?
  /** The list id. */
  public var listId: String?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(notes: [MemberNotes3]? = nil, emailId: String? = nil, listId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.notes = notes
    self.emailId = emailId
    self.listId = listId
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case notes
    case emailId = "email_id"
    case listId = "list_id"
    case totalItems = "total_items"
    case links = "_links"
  }
}
