import Foundation

/** An object describing the open activity for the campaign. */

public struct Opens: Codable {
  /** The total number of opens for a campaign. */
  public var opensTotal: Int?
  /** The total number of unique opens. */
  public var uniqueOpens: Int?
  /** The number of unique opens divided by the total number of successful deliveries. */
  public var openRate: Decimal?
  /** The date and time of the last recorded open in ISO 8601 format. */
  public var lastOpen: Date?

  public init(opensTotal: Int? = nil, uniqueOpens: Int? = nil, openRate: Decimal? = nil, lastOpen: Date? = nil) {
    self.opensTotal = opensTotal
    self.uniqueOpens = uniqueOpens
    self.openRate = openRate
    self.lastOpen = lastOpen
  }

  public enum CodingKeys: String, CodingKey {
    case opensTotal = "opens_total"
    case uniqueOpens = "unique_opens"
    case openRate = "open_rate"
    case lastOpen = "last_open"
  }
}
