import Foundation

import PrchModel
/** A specific note for a specific member. */
public struct MemberNotesModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** As Mailchimp evolves beyond email, you may eventually have contacts without email addresses. While the `email_id` is the MD5 hash of their email address, this `contact_id` is agnostic of contact’s inclusion of an email address. */
  public var contactId: String?

  /** The date and time the note was created in ISO 8601 format. */
  public var createdAt: DateTime?

  /** The author of the note. */
  public var createdBy: String?

  /** The MD5 hash of the lowercase version of the list member's email address. */
  public var emailId: String?

  /** The note id. */
  public var id: Int?

  /** The unique id for the list. */
  public var listId: String?

  /** The content of the note. */
  public var note: String?

  /** The date and time the note was last updated in ISO 8601 format. */
  public var updatedAt: DateTime?

  public init(links: [ResourceLinkModel]? = nil, contactId: String? = nil, createdAt: DateTime? = nil, createdBy: String? = nil, emailId: String? = nil, id: Int? = nil, listId: String? = nil, note: String? = nil, updatedAt: DateTime? = nil) {
    self.links = links
    self.contactId = contactId
    self.createdAt = createdAt
    self.createdBy = createdBy
    self.emailId = emailId
    self.id = id
    self.listId = listId
    self.note = note
    self.updatedAt = updatedAt
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case contactId = "contact_id"
    case createdAt = "created_at"
    case createdBy = "created_by"
    case emailId = "email_id"
    case id
    case listId = "list_id"
    case note
    case updatedAt = "updated_at"
  }
}
