import Foundation

/** The conditions of the segment. Static segments (tags) and fuzzy segments don&#x27;t have conditions. */

public struct Conditions2: Codable {
  public enum Match: String, Codable {
    case any
    case all
  }

  /** Match type. */
  public var match: Match?
  /** Segment match conditions. There are multiple possible types, see the [condition types documentation](https://mailchimp.com/developer/marketing/docs/alternative-schemas/#segment-condition-schemas). */
  public var conditions: [ConditionFilter]?

  public init(match: Match? = nil, conditions: [ConditionFilter]? = nil) {
    self.match = match
    self.conditions = conditions
  }
}
