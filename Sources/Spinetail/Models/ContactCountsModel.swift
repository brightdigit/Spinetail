import Foundation

import PrchModel
/** For email question types, how many are new, known, or unknown contacts. */
public struct ContactCountsModel: Codable, Equatable, Content {
  /** The number of known contacts that responded to this survey. */
  public var known: Int?

  /** The number of new contacts that responded to this survey. */
  public var new: Int?

  /** The number of unknown contacts that responded to this survey. */
  public var unknown: Int?

  public init(known: Int? = nil, new: Int? = nil, unknown: Int? = nil) {
    self.known = known
    self.new = new
    self.unknown = unknown
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case known
    case new
    case unknown
  }
}
