import Foundation

/** An authorized app. */

public struct InlineResponse2002: Codable {
  /** The ID for the application. */
  public var _id: Int?
  /** The name of the application. */
  public var name: String?
  /** A short description of the application. */
  public var _description: String?
  /** An array of usernames for users who have linked the app. */
  public var users: [String]?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(_id: Int? = nil, name: String? = nil, _description: String? = nil, users: [String]? = nil, links: [ResourceLink]? = nil) {
    self._id = _id
    self.name = name
    self._description = _description
    self.users = users
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case name
    case _description = "description"
    case users
    case links = "_links"
  }
}
