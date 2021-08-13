import Foundation

/** A specific note for a specific member. */

public struct MemberNotes3: Codable {
  /** The note id. */
  public var _id: Int?
  /** The date and time the note was created in ISO 8601 format. */
  public var createdAt: Date?
  /** The author of the note. */
  public var createdBy: String?
  /** The date and time the note was last updated in ISO 8601 format. */
  public var updatedAt: Date?
  /** The content of the note. */
  public var note: String?
  /** The unique id for the list. */
  public var listId: String?
  /** The MD5 hash of the lowercase version of the list member&#x27;s email address. */
  public var emailId: String?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(_id: Int? = nil, createdAt: Date? = nil, createdBy: String? = nil, updatedAt: Date? = nil, note: String? = nil, listId: String? = nil, emailId: String? = nil, links: [ResourceLink]? = nil) {
    self._id = _id
    self.createdAt = createdAt
    self.createdBy = createdBy
    self.updatedAt = updatedAt
    self.note = note
    self.listId = listId
    self.emailId = emailId
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case createdAt = "created_at"
    case createdBy = "created_by"
    case updatedAt = "updated_at"
    case note
    case listId = "list_id"
    case emailId = "email_id"
    case links = "_links"
  }
}
