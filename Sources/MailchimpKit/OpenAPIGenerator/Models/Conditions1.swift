import Foundation

/** The [conditions of the segment](https://mailchimp.com/help/save-and-manage-segments/). Static and fuzzy segments don&#x27;t have conditions. */

public struct Conditions1: Codable {
  public enum Match: String, Codable {
    case any
    case all
  }

  /** Match type. */
  public var match: Match?
  /** An array of segment conditions. */
  public var conditions: [[ConditionFilter]]?

  public init(match: Match? = nil, conditions: [[ConditionFilter]]? = nil) {
    self.match = match
    self.conditions = conditions
  }
}
