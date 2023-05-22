import Foundation

import PrchModel
/** An individual file listed in the File Manager. */
public struct GalleryFileModel: Codable, Equatable, Content {
  /** The type of file in the File Manager. */
  public enum `Type`: String, Codable, Equatable, CaseIterable {
    case image
    case file
  }

  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** The date and time a file was added to the File Manager in ISO 8601 format. */
  public var createdAt: DateTime?

  /** The username of the profile that uploaded the file. */
  public var createdBy: String?

  /** The id of the folder. */
  public var folderId: Int?

  /** The url of the full-size file. */
  public var fullSizeURL: URL?

  /** The height of an image. */
  public var height: Int?

  /** The unique id of the file. */
  public var id: Int?

  /** The name of the file. */
  public var name: String?

  /** The size of the file in bytes. */
  public var size: Int?

  /** The url of the thumbnail preview. */
  public var thumbnailURL: URL?

  /** The type of file in the File Manager. */
  public var type: `Type`?

  /** The width of the image. */
  public var width: Int?

  public init(links: [ResourceLinkModel]? = nil, createdAt: DateTime? = nil, createdBy: String? = nil, folderId: Int? = nil, fullSizeURL: URL? = nil, height: Int? = nil, id: Int? = nil, name: String? = nil, size: Int? = nil, thumbnailURL: URL? = nil, type: Type? = nil, width: Int? = nil) {
    self.links = links
    self.createdAt = createdAt
    self.createdBy = createdBy
    self.folderId = folderId
    self.fullSizeURL = fullSizeURL
    self.height = height
    self.id = id
    self.name = name
    self.size = size
    self.thumbnailURL = thumbnailURL
    self.type = type
    self.width = width
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case createdAt = "created_at"
    case createdBy = "created_by"
    case folderId = "folder_id"
    case fullSizeURL = "full_size_url"
    case height
    case id
    case name
    case size
    case thumbnailURL = "thumbnail_url"
    case type
    case width
  }
}
