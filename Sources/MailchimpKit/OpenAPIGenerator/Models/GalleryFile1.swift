import Foundation

/** An individual file listed in the File Manager. */

public struct GalleryFile1: Codable {
  public enum ModelType: String, Codable {
    case image
    case file
  }

  /** The unique id of the file. */
  public var _id: Int?
  /** The id of the folder. */
  public var folderId: Int?
  /** The type of file in the File Manager. */
  public var type: ModelType?
  /** The name of the file. */
  public var name: String?
  /** The url of the full-size file. */
  public var fullSizeUrl: String?
  /** The url of the thumbnail preview. */
  public var thumbnailUrl: String?
  /** The size of the file in bytes. */
  public var size: Int?
  /** The date and time a file was added to the File Manager in ISO 8601 format. */
  public var createdAt: Date?
  /** The username of the profile that uploaded the file. */
  public var createdBy: String?
  /** The width of the image. */
  public var width: Int?
  /** The height of an image. */
  public var height: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(_id: Int? = nil, folderId: Int? = nil, type: ModelType? = nil, name: String? = nil, fullSizeUrl: String? = nil, thumbnailUrl: String? = nil, size: Int? = nil, createdAt: Date? = nil, createdBy: String? = nil, width: Int? = nil, height: Int? = nil, links: [ResourceLink]? = nil) {
    self._id = _id
    self.folderId = folderId
    self.type = type
    self.name = name
    self.fullSizeUrl = fullSizeUrl
    self.thumbnailUrl = thumbnailUrl
    self.size = size
    self.createdAt = createdAt
    self.createdBy = createdBy
    self.width = width
    self.height = height
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case folderId = "folder_id"
    case type
    case name
    case fullSizeUrl = "full_size_url"
    case thumbnailUrl = "thumbnail_url"
    case size
    case createdAt = "created_at"
    case createdBy = "created_by"
    case width
    case height
    case links = "_links"
  }
}
