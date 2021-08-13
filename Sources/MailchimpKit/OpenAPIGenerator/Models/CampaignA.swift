import Foundation

/** Stats for Campaign A. */

public struct CampaignA: Codable {
  /** Bounces for Campaign A. */
  public var bounces: Int?
  /** Abuse reports for Campaign A. */
  public var abuseReports: Int?
  /** Unsubscribes for Campaign A. */
  public var unsubs: Int?
  /** Recipient Clicks for Campaign A. */
  public var recipientClicks: Int?
  /** Forwards for Campaign A. */
  public var forwards: Int?
  /** Opens from forwards for Campaign A. */
  public var forwardsOpens: Int?
  /** Opens for Campaign A. */
  public var opens: Int?
  /** The last open for Campaign A. */
  public var lastOpen: String?
  /** Unique opens for Campaign A. */
  public var uniqueOpens: Int?

  public init(bounces: Int? = nil, abuseReports: Int? = nil, unsubs: Int? = nil, recipientClicks: Int? = nil, forwards: Int? = nil, forwardsOpens: Int? = nil, opens: Int? = nil, lastOpen: String? = nil, uniqueOpens: Int? = nil) {
    self.bounces = bounces
    self.abuseReports = abuseReports
    self.unsubs = unsubs
    self.recipientClicks = recipientClicks
    self.forwards = forwards
    self.forwardsOpens = forwardsOpens
    self.opens = opens
    self.lastOpen = lastOpen
    self.uniqueOpens = uniqueOpens
  }

  public enum CodingKeys: String, CodingKey {
    case bounces
    case abuseReports = "abuse_reports"
    case unsubs
    case recipientClicks = "recipient_clicks"
    case forwards
    case forwardsOpens = "forwards_opens"
    case opens
    case lastOpen = "last_open"
    case uniqueOpens = "unique_opens"
  }
}
