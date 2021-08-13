import Foundation

/** Stats for Campaign B. */

public struct CampaignB: Codable {
  /** Bounces for Campaign B. */
  public var bounces: Int?
  /** Abuse reports for Campaign B. */
  public var abuseReports: Int?
  /** Unsubscribes for Campaign B. */
  public var unsubs: Int?
  /** Recipients clicks for Campaign B. */
  public var recipientClicks: Int?
  /** Forwards for Campaign B. */
  public var forwards: Int?
  /** Opens for forwards from Campaign B. */
  public var forwardsOpens: Int?
  /** Opens for Campaign B. */
  public var opens: Int?
  /** The last open for Campaign B. */
  public var lastOpen: String?
  /** Unique opens for Campaign B. */
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
