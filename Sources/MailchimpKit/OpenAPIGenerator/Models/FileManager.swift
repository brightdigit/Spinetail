import Foundation

/** A list of available images and files stored in the File Manager for the account. */

public struct MailchimpFileManager: Codable {
  /**  A list of files and images in an account. */
  public var files: [GalleryFile3]?
  /** The total size of all File Manager files in bytes. */
  public var totalFileSize: Decimal?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(files: [GalleryFile3]? = nil, totalFileSize: Decimal? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.files = files
    self.totalFileSize = totalFileSize
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case files
    case totalFileSize = "total_file_size"
    case totalItems = "total_items"
    case links = "_links"
  }
}
