import Foundation

import PrchModel
public struct TagsInner1Model: Codable, Equatable, Content {
  /** The unique id for the tag. */
  public var id: Int?

  /** The name of the tag. */
  public var name: String?

  public init(id: Int? = nil, name: String? = nil) {
    self.id = id
    self.name = name
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case id
    case name
  }
}
