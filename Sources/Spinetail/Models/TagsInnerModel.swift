import Foundation

import PrchModel
public struct TagsInnerModel: Codable, Equatable, Content {
  /** The tag id. */
  public var id: Int?

  /** The name of the tag */
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
