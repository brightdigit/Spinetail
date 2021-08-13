import Foundation

public struct ConditionFilter: Codable {
  public let field: String
  public let op: String
  public let value: String
  public let extra: String
}

// {
//               "field": "timestamp_opt",
//               "op":  "greater",
//               "value": "date",
//               "extra": "2021-01-01"
//           }

/** The [conditions of the segment](https://mailchimp.com/help/save-and-manage-segments/). Static and fuzzy segments don&#x27;t have conditions. */

public struct Conditions: Codable {
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
