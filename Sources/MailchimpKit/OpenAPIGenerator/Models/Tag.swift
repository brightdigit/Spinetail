import Foundation

public struct Tag: Codable {
  /** The unique id for the tag. */
  public var tagId: Int?
  /** The name of the tag. */
  public var tagName: String?

  public init(tagId: Int? = nil, tagName: String? = nil) {
    self.tagId = tagId
    self.tagName = tagName
  }

  public enum CodingKeys: String, CodingKey {
    case tagId = "tag_id"
    case tagName = "tag_name"
  }
}
