import Foundation

import PrchModel
public struct VisitsInner1Model: Codable, Equatable, Content {
  public var date: String?

  public var val: Int?

  public init(date: String? = nil, val: Int? = nil) {
    self.date = date
    self.val = val
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case date
    case val
  }
}
