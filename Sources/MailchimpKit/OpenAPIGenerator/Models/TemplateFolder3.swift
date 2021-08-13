import Foundation

/** A folder used to organize templates. */

public struct TemplateFolder3: Codable {
  /** The name of the folder. */
  public var name: String?
  /** A string that uniquely identifies this template folder. */
  public var _id: String?
  /** The number of templates in the folder. */
  public var count: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(name: String? = nil, _id: String? = nil, count: Int? = nil, links: [ResourceLink]? = nil) {
    self.name = name
    self._id = _id
    self.count = count
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case name
    case _id = "id"
    case count
    case links = "_links"
  }
}
