import Foundation

/** An individual file listed in the File Manager. */

public struct GalleryFile: Codable {
  /** The id of the folder. */
  public var folderId: Int?
  /** The name of the file. */
  public var name: String
  /** The base64-encoded contents of the file. */
  public var fileData: String

  public init(folderId: Int? = nil, name: String, fileData: String) {
    self.folderId = folderId
    self.name = name
    self.fileData = fileData
  }

  public enum CodingKeys: String, CodingKey {
    case folderId = "folder_id"
    case name
    case fileData = "file_data"
  }
}
