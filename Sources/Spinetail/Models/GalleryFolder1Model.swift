import Foundation

import PrchModel
/** An individual folder listed in the File Manager. */
public struct GalleryFolder1Model: Codable, Equatable, Content {
  /** The name of the folder. */
  public var name: String

  public init(name: String) {
    self.name = name
  }

  public enum CodingKeys: String, CodingKey {
    case name
  }
}
