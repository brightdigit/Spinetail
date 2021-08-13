import Foundation

/** Information about a specific segment. */

public struct List4: Codable {
  public enum ModelType: String, Codable {
    case saved
    case _static = "static"
    case fuzzy
  }

  /** The unique id for the segment. */
  public var _id: Int?
  /** The name of the segment. */
  public var name: String?
  /** The number of active subscribers currently included in the segment. */
  public var memberCount: Int?
  /** The type of segment. Static segments are now known as tags. Learn more about [tags](https://mailchimp.com/help/getting-started-tags?utm_source&#x3D;mc-api&amp;utm_medium&#x3D;docs&amp;utm_campaign&#x3D;apidocs). */
  public var type: ModelType?
  /** The date and time the segment was created in ISO 8601 format. */
  public var createdAt: Date?
  /** The date and time the segment was last updated in ISO 8601 format. */
  public var updatedAt: Date?
  public var options: Conditions2?
  /** The list id. */
  public var listId: String?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(_id: Int? = nil, name: String? = nil, memberCount: Int? = nil, type: ModelType? = nil, createdAt: Date? = nil, updatedAt: Date? = nil, options: Conditions2? = nil, listId: String? = nil, links: [ResourceLink]? = nil) {
    self._id = _id
    self.name = name
    self.memberCount = memberCount
    self.type = type
    self.createdAt = createdAt
    self.updatedAt = updatedAt
    self.options = options
    self.listId = listId
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case name
    case memberCount = "member_count"
    case type
    case createdAt = "created_at"
    case updatedAt = "updated_at"
    case options
    case listId = "list_id"
    case links = "_links"
  }
}
