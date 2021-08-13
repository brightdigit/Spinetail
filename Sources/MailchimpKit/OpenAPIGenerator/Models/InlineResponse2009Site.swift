import Foundation

/** Connected Site */

public struct InlineResponse2009Site: Codable {
  /** The ID of this connected site. */
  public var _id: Int?
  /** The name of the connected site */
  public var name: String?
  /** The URL for this connected site. */
  public var url: String?

  public init(_id: Int? = nil, name: String? = nil, url: String? = nil) {
    self._id = _id
    self.name = name
    self.url = url
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case name
    case url
  }
}
