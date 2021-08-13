import Foundation

/** The outreach associated with this order. For example, an email campaign or Facebook ad. */

public struct Outreach1: Codable {
  /** A unique identifier for the outreach. Can be an email campaign ID. */
  public var _id: String?
  /** The name for the outreach. */
  public var name: String?
  /** The type of the outreach. */
  public var type: String?
  /** The date and time the Outreach was published in ISO 8601 format. */
  public var publishedTime: Date?

  public init(_id: String? = nil, name: String? = nil, type: String? = nil, publishedTime: Date? = nil) {
    self._id = _id
    self.name = name
    self.type = type
    self.publishedTime = publishedTime
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case name
    case type
    case publishedTime = "published_time"
  }
}
