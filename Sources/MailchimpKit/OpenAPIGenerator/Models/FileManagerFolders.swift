import Foundation

/** A list of all folders in the File Manager. */

public struct FileManagerFolders: Codable {
  /** A list of all folders in the File Manager. */
  public var folders: [GalleryFolder3]?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(folders: [GalleryFolder3]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.folders = folders
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case folders
    case totalItems = "total_items"
    case links = "_links"
  }
}
