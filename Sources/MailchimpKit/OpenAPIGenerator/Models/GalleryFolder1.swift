import Foundation

/** An individual folder listed in the File Manager. */

public struct GalleryFolder1: Codable {
  /** The unique id for the folder. */
  public var _id: Int?
  /** The name of the folder. */
  public var name: String?
  /** The number of files in the folder. */
  public var fileCount: Int?
  /** The date and time a file was added to the File Manager in ISO 8601 format. */
  public var createdAt: Date?
  /** The username of the profile that created the folder. */
  public var createdBy: String?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(_id: Int? = nil, name: String? = nil, fileCount: Int? = nil, createdAt: Date? = nil, createdBy: String? = nil, links: [ResourceLink]? = nil) {
    self._id = _id
    self.name = name
    self.fileCount = fileCount
    self.createdAt = createdAt
    self.createdBy = createdBy
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case name
    case fileCount = "file_count"
    case createdAt = "created_at"
    case createdBy = "created_by"
    case links = "_links"
  }
}
