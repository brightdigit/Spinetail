import Foundation

import PrchModel
/** The [conditions of the segment](https://mailchimp.com/help/save-and-manage-segments/). Static and fuzzy segments don't have conditions. */
public struct Conditions2Model: Codable, Equatable, Content {
  /** Match type. */
  public enum AutomationsAutomationsMatch: String, Codable, Equatable, CaseIterable {
    case any
    case all
  }

  /** An array of segment conditions. */
  public var conditions: [String: String]?

  /** Match type. */
  public var match: Match?

  public init(conditions: [String: String]? = nil, match: Match? = nil) {
    self.conditions = conditions
    self.match = match
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case conditions
    case match
  }
}
