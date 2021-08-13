import Foundation

/** An individual folder listed in the File Manager. */

public struct GalleryFolder: Codable {
  /** The name of the folder. */
  public var name: String

  public init(name: String) {
    self.name = name
  }
}
