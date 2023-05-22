import Foundation

import PrchModel
/** An individual file listed in the File Manager. */
public struct GalleryFile2Model: Codable, Equatable, Content {
  /** The id of the folder. Setting `folder_id` to `0` will remove a file from its current folder. */
  public var folderId: Int?

  /** The name of the file. */
  public var name: String?

  public init(folderId: Int? = nil, name: String? = nil) {
    self.folderId = folderId
    self.name = name
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case folderId = "folder_id"
    case name
  }
}
