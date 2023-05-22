import Foundation

import PrchModel
/** An individual folder listed in the File Manager. */
public struct GalleryFolderModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** The date and time a file was added to the File Manager in ISO 8601 format. */
  public var createdAt: DateTime?

  /** The username of the profile that created the folder. */
  public var createdBy: String?

  /** The number of files in the folder. */
  public var fileCount: Int?

  /** The unique id for the folder. */
  public var id: Int?

  /** The name of the folder. */
  public var name: String?

  public init(links: [ResourceLinkModel]? = nil, createdAt: DateTime? = nil, createdBy: String? = nil, fileCount: Int? = nil, id: Int? = nil, name: String? = nil) {
    self.links = links
    self.createdAt = createdAt
    self.createdBy = createdBy
    self.fileCount = fileCount
    self.id = id
    self.name = name
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case createdAt = "created_at"
    case createdBy = "created_by"
    case fileCount = "file_count"
    case id
    case name
  }
}
