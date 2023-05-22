import Foundation

import PrchModel
/** The outreach associated with this order. For example, an email campaign or Facebook ad. */
public struct OutreachModel: Codable, Equatable, Content {
  /** A unique identifier for the outreach. Can be an email campaign ID. */
  public var id: String?

  /** The name for the outreach. */
  public var name: String?

  /** The date and time the Outreach was published in ISO 8601 format. */
  public var publishedTime: DateTime?

  /** The type of the outreach. */
  public var type: String?

  public init(id: String? = nil, name: String? = nil, publishedTime: DateTime? = nil, type: String? = nil) {
    self.id = id
    self.name = name
    self.publishedTime = publishedTime
    self.type = type
  }

  public enum CodingKeys: String, CodingKey {
    case id
    case name
    case publishedTime = "published_time"
    case type
  }
}
