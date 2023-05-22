import Foundation

import PrchModel
/** An object describing the open activity for the campaign. */
public struct OpensModel: Codable, Equatable, Content {
  /** The date and time of the last recorded open in ISO 8601 format. */
  public var lastOpen: DateTime?

  /** The number of unique opens divided by the total number of successful deliveries. */
  public var openRate: Double?

  /** The total number of opens for a campaign. */
  public var opensTotal: Int?

  /** The total number of unique opens. */
  public var uniqueOpens: Int?

  public init(lastOpen: DateTime? = nil, openRate: Double? = nil, opensTotal: Int? = nil, uniqueOpens: Int? = nil) {
    self.lastOpen = lastOpen
    self.openRate = openRate
    self.opensTotal = opensTotal
    self.uniqueOpens = uniqueOpens
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case lastOpen = "last_open"
    case openRate = "open_rate"
    case opensTotal = "opens_total"
    case uniqueOpens = "unique_opens"
  }
}
