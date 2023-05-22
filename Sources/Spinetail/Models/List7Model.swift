import Foundation

import PrchModel
/** Information about a specific segment. */
public struct List7Model: Codable, Equatable, Content {
  /** The type of segment. Static segments are now known as tags. Learn more about [tags](https://mailchimp.com/help/getting-started-tags?utm_source=mc-api&utm_medium=docs&utm_campaign=apidocs). */
  public enum Automations`Type`: String, Codable, Equatable, CaseIterable {
    case saved
    case `static`
    case fuzzy
  }

  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** The date and time the segment was created in ISO 8601 format. */
  public var createdAt: DateTime?

  /** The unique id for the segment. */
  public var id: Int?

  /** The list id. */
  public var listId: String?

  /** The number of active subscribers currently included in the segment. */
  public var memberCount: Int?

  /** The name of the segment. */
  public var name: String?

  public var options: ConditionsModel?

  /** The type of segment. Static segments are now known as tags. Learn more about [tags](https://mailchimp.com/help/getting-started-tags?utm_source=mc-api&utm_medium=docs&utm_campaign=apidocs). */
  public var type: `Type`?

  /** The date and time the segment was last updated in ISO 8601 format. */
  public var updatedAt: DateTime?

  public init(links: [ResourceLinkModel]? = nil, createdAt: DateTime? = nil, id: Int? = nil, listId: String? = nil, memberCount: Int? = nil, name: String? = nil, options: ConditionsModel? = nil, type: Type? = nil, updatedAt: DateTime? = nil) {
    self.links = links
    self.createdAt = createdAt
    self.id = id
    self.listId = listId
    self.memberCount = memberCount
    self.name = name
    self.options = options
    self.type = type
    self.updatedAt = updatedAt
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case createdAt = "created_at"
    case id
    case listId = "list_id"
    case memberCount = "member_count"
    case name
    case options
    case type
    case updatedAt = "updated_at"
  }
}
