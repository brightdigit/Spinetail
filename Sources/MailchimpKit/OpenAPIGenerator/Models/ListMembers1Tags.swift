import Foundation

public struct ListMembers1Tags: Codable {
  /** The tag id. */
  public var _id: Int?
  /** The name of the tag */
  public var name: String?

  public init(_id: Int? = nil, name: String? = nil) {
    self._id = _id
    self.name = name
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case name
  }
}
