import Foundation

import PrchModel
/** A summary of an individual landing page's settings and content. */
public struct LandingPageModel: Codable, Equatable, Content {
  /** The status of this landing page. */
  public enum Status: String, Codable, Equatable, CaseIterable {
    case published
    case unpublished
    case draft
  }

  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** The time this landing page was created. */
  public var createdAt: DateTime?

  /** Created by mobile or web */
  public var createdBySource: String?

  /** The description of this landing page. */
  public var description: String?

  /** A string that uniquely identifies this landing page. */
  public var id: String?

  /** The list's ID associated with this landing page. */
  public var listId: String?

  /** The name of this landing page. */
  public var name: String?

  /** The time this landing page was published. */
  public var publishedAt: DateTime?

  /** The status of this landing page. */
  public var status: Status?

  /** The ID of the store associated with this landing page. */
  public var storeId: String?

  /** The template_id of this landing page. */
  public var templateId: Int?

  /** The title of this landing page seen in the browser's title bar. */
  public var title: String?

  public var tracking: TrackingSettingsModel?

  /** The time this landing page was unpublished. */
  public var unpublishedAt: DateTime?

  /** The time this landing page was updated at. */
  public var updatedAt: DateTime?

  /** The url of the published landing page. */
  public var url: String?

  /** The ID used in the Mailchimp web application. */
  public var webId: Int?

  public init(links: [ResourceLinkModel]? = nil, createdAt: DateTime? = nil, createdBySource: String? = nil, description: String? = nil, id: String? = nil, listId: String? = nil, name: String? = nil, publishedAt: DateTime? = nil, status: Status? = nil, storeId: String? = nil, templateId: Int? = nil, title: String? = nil, tracking: TrackingSettingsModel? = nil, unpublishedAt: DateTime? = nil, updatedAt: DateTime? = nil, url: String? = nil, webId: Int? = nil) {
    self.links = links
    self.createdAt = createdAt
    self.createdBySource = createdBySource
    self.description = description
    self.id = id
    self.listId = listId
    self.name = name
    self.publishedAt = publishedAt
    self.status = status
    self.storeId = storeId
    self.templateId = templateId
    self.title = title
    self.tracking = tracking
    self.unpublishedAt = unpublishedAt
    self.updatedAt = updatedAt
    self.url = url
    self.webId = webId
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case createdAt = "created_at"
    case createdBySource = "created_by_source"
    case description
    case id
    case listId = "list_id"
    case name
    case publishedAt = "published_at"
    case status
    case storeId = "store_id"
    case templateId = "template_id"
    case title
    case tracking
    case unpublishedAt = "unpublished_at"
    case updatedAt = "updated_at"
    case url
    case webId = "web_id"
  }
}
