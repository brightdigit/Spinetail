import Foundation

public struct SendChecklistItems: Codable {
  public enum ModelType: String, Codable {
    case success
    case warning
    case error
  }

  /** The item type. */
  public var type: ModelType?
  /** The ID for the specific item. */
  public var _id: Int?
  /** The heading for the specific item. */
  public var heading: String?
  /** Details about the specific feedback item. */
  public var details: String?

  public init(type: ModelType? = nil, _id: Int? = nil, heading: String? = nil, details: String? = nil) {
    self.type = type
    self._id = _id
    self.heading = heading
    self.details = details
  }

  public enum CodingKeys: String, CodingKey {
    case type
    case _id = "id"
    case heading
    case details
  }
}
