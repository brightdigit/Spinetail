import Foundation

import PrchModel
/** The conditions of the segment. Static segments (tags) and fuzzy segments don't have conditions. */
public struct ConditionsModel: Codable, Equatable, Content {
  /** Match type. */
  public enum Match: String, Codable, Equatable, CaseIterable {
    case any
    case all
  }

  /** Segment match conditions. There are multiple possible types, see the [condition types documentation](https://mailchimp.com/developer/marketing/docs/alternative-schemas/#segment-condition-schemas). */
  public var conditions: [String: String]?

  /** Match type. */
  public var match: Match?

  public init(conditions: [String: String]? = nil, match: Match? = nil) {
    self.conditions = conditions
    self.match = match
  }

  public enum CodingKeys: String, CodingKey {
    case conditions
    case match
  }
}
