import Foundation

/** An individual file listed in the File Manager. */

public struct GalleryFile2: Codable {
  /** The id of the folder. Setting &#x60;folder_id&#x60; to &#x60;0&#x60; will remove a file from its current folder. */
  public var folderId: Int?
  /** The name of the file. */
  public var name: String?

  public init(folderId: Int? = nil, name: String? = nil) {
    self.folderId = folderId
    self.name = name
  }

  public enum CodingKeys: String, CodingKey {
    case folderId = "folder_id"
    case name
  }
}
