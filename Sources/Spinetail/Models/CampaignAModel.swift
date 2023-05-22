import Foundation

import PrchModel
/** Stats for Campaign A. */
public struct CampaignAModel: Codable, Equatable, Content {
  /** Abuse reports for Campaign A. */
  public var abuseReports: Int?

  /** Bounces for Campaign A. */
  public var bounces: Int?

  /** Forwards for Campaign A. */
  public var forwards: Int?

  /** Opens from forwards for Campaign A. */
  public var forwardsOpens: Int?

  /** The last open for Campaign A. */
  public var lastOpen: String?

  /** Opens for Campaign A. */
  public var opens: Int?

  /** Recipient Clicks for Campaign A. */
  public var recipientClicks: Int?

  /** Unique opens for Campaign A. */
  public var uniqueOpens: Int?

  /** Unsubscribes for Campaign A. */
  public var unsubs: Int?

  public init(abuseReports: Int? = nil, bounces: Int? = nil, forwards: Int? = nil, forwardsOpens: Int? = nil, lastOpen: String? = nil, opens: Int? = nil, recipientClicks: Int? = nil, uniqueOpens: Int? = nil, unsubs: Int? = nil) {
    self.abuseReports = abuseReports
    self.bounces = bounces
    self.forwards = forwards
    self.forwardsOpens = forwardsOpens
    self.lastOpen = lastOpen
    self.opens = opens
    self.recipientClicks = recipientClicks
    self.uniqueOpens = uniqueOpens
    self.unsubs = unsubs
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case abuseReports = "abuse_reports"
    case bounces
    case forwards
    case forwardsOpens = "forwards_opens"
    case lastOpen = "last_open"
    case opens
    case recipientClicks = "recipient_clicks"
    case uniqueOpens = "unique_opens"
    case unsubs
  }
}
