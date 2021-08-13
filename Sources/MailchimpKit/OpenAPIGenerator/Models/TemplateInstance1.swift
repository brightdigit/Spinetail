import Foundation

/** Information about a specific template. */

public struct TemplateInstance1: Codable {
  /** The individual id for the template. */
  public var _id: Int?
  /** The type of template (user, base, or gallery). */
  public var type: String?
  /** The name of the template. */
  public var name: String?
  /** Whether the template uses the drag and drop editor. */
  public var dragAndDrop: Bool?
  /** Whether the template contains media queries to make it responsive. */
  public var responsive: Bool?
  /** If available, the category the template is listed in. */
  public var category: String?
  /** The date and time the template was created in ISO 8601 format. */
  public var dateCreated: Date?
  /** The date and time the template was edited in ISO 8601 format. */
  public var dateEdited: Date?
  /** The login name for template&#x27;s creator. */
  public var createdBy: String?
  /** The login name who last edited the template. */
  public var editedBy: String?
  /** User templates are not &#x27;deleted,&#x27; but rather marked as &#x27;inactive.&#x27; Returns whether the template is still active. */
  public var active: Bool?
  /** The id of the folder the template is currently in. */
  public var folderId: String?
  /** If available, the URL for a thumbnail of the template. */
  public var thumbnail: String?
  /** The URL used for [template sharing](https://mailchimp.com/help/share-a-template/). */
  public var shareUrl: String?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(_id: Int? = nil, type: String? = nil, name: String? = nil, dragAndDrop: Bool? = nil, responsive: Bool? = nil, category: String? = nil, dateCreated: Date? = nil, dateEdited: Date? = nil, createdBy: String? = nil, editedBy: String? = nil, active: Bool? = nil, folderId: String? = nil, thumbnail: String? = nil, shareUrl: String? = nil, links: [ResourceLink]? = nil) {
    self._id = _id
    self.type = type
    self.name = name
    self.dragAndDrop = dragAndDrop
    self.responsive = responsive
    self.category = category
    self.dateCreated = dateCreated
    self.dateEdited = dateEdited
    self.createdBy = createdBy
    self.editedBy = editedBy
    self.active = active
    self.folderId = folderId
    self.thumbnail = thumbnail
    self.shareUrl = shareUrl
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case type
    case name
    case dragAndDrop = "drag_and_drop"
    case responsive
    case category
    case dateCreated = "date_created"
    case dateEdited = "date_edited"
    case createdBy = "created_by"
    case editedBy = "edited_by"
    case active
    case folderId = "folder_id"
    case thumbnail
    case shareUrl = "share_url"
    case links = "_links"
  }
}
