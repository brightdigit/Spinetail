import Foundation

import PrchModel
/** A folder used to organize templates. */
public struct TemplateFolder1Model: Codable, Equatable, Content {
  /** The name of the folder. */
  public var name: String

  public init(name: String) {
    self.name = name
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case name
  }
}
