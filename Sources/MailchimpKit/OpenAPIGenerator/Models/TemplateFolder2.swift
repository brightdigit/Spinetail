import Foundation

/** A folder used to organize templates. */

public struct TemplateFolder2: Codable {
  /** The name of the folder. */
  public var name: String

  public init(name: String) {
    self.name = name
  }
}
