import Foundation

/** A summary of an individual landing page&#x27;s settings and content. */

public struct LandingPage3: Codable {
  public enum Status: String, Codable {
    case published
    case unpublished
    case draft
  }

  /** A string that uniquely identifies this landing page. */
  public var _id: String?
  /** The name of this landing page. */
  public var name: String?
  /** The title of this landing page seen in the browser&#x27;s title bar. */
  public var title: String?
  /** The description of this landing page. */
  public var _description: String?
  /** The template_id of this landing page. */
  public var templateId: Int?
  /** The status of this landing page. */
  public var status: Status?
  /** The list&#x27;s ID associated with this landing page. */
  public var listId: String?
  /** The ID of the store associated with this landing page. */
  public var storeId: String?
  /** The ID used in the Mailchimp web application. */
  public var webId: Int?
  /** Created by mobile or web */
  public var createdBySource: String?
  /** The url of the published landing page. */
  public var url: String?
  /** The time this landing page was created. */
  public var createdAt: Date?
  /** The time this landing page was published. */
  public var publishedAt: Date?
  /** The time this landing page was unpublished. */
  public var unpublishedAt: Date?
  /** The time this landing page was updated at. */
  public var updatedAt: Date?
  public var tracking: TrackingSettings?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(_id: String? = nil, name: String? = nil, title: String? = nil, _description: String? = nil, templateId: Int? = nil, status: Status? = nil, listId: String? = nil, storeId: String? = nil, webId: Int? = nil, createdBySource: String? = nil, url: String? = nil, createdAt: Date? = nil, publishedAt: Date? = nil, unpublishedAt: Date? = nil, updatedAt: Date? = nil, tracking: TrackingSettings? = nil, links: [ResourceLink]? = nil) {
    self._id = _id
    self.name = name
    self.title = title
    self._description = _description
    self.templateId = templateId
    self.status = status
    self.listId = listId
    self.storeId = storeId
    self.webId = webId
    self.createdBySource = createdBySource
    self.url = url
    self.createdAt = createdAt
    self.publishedAt = publishedAt
    self.unpublishedAt = unpublishedAt
    self.updatedAt = updatedAt
    self.tracking = tracking
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case name
    case title
    case _description = "description"
    case templateId = "template_id"
    case status
    case listId = "list_id"
    case storeId = "store_id"
    case webId = "web_id"
    case createdBySource = "created_by_source"
    case url
    case createdAt = "created_at"
    case publishedAt = "published_at"
    case unpublishedAt = "unpublished_at"
    case updatedAt = "updated_at"
    case tracking
    case links = "_links"
  }
}
