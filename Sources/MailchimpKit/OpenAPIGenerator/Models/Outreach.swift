import Foundation

/** The outreach associated with this order. For example, an email campaign or Facebook ad. */

public struct Outreach: Codable {
  /** A unique identifier for the outreach. Can be an email campaign ID. */
  public var _id: String?

  public init(_id: String? = nil) {
    self._id = _id
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
  }
}
