import Foundation

/** A single email domain&#x27;s performance */

public struct EmailDomain: Codable {
  /** The name of the domain (gmail.com, hotmail.com, yahoo.com). */
  public var domain: String?
  /** The number of emails sent to that specific domain. */
  public var emailsSent: Int?
  /** The number of bounces at a domain. */
  public var bounces: Int?
  /** The number of opens for a domain. */
  public var opens: Int?
  /** The number of clicks for a domain. */
  public var clicks: Int?
  /** The total number of unsubscribes for a domain. */
  public var unsubs: Int?
  /** The number of successful deliveries for a domain. */
  public var delivered: Int?
  /** The percentage of total emails that went to this domain. */
  public var emailsPct: Decimal?
  /** The percentage of total bounces from this domain. */
  public var bouncesPct: Decimal?
  /** The percentage of total opens from this domain. */
  public var opensPct: Decimal?
  /** The percentage of total clicks from this domain. */
  public var clicksPct: Decimal?
  /** The percentage of total unsubscribes from this domain. */
  public var unsubsPct: Decimal?

  public init(domain: String? = nil, emailsSent: Int? = nil, bounces: Int? = nil, opens: Int? = nil, clicks: Int? = nil, unsubs: Int? = nil, delivered: Int? = nil, emailsPct: Decimal? = nil, bouncesPct: Decimal? = nil, opensPct: Decimal? = nil, clicksPct: Decimal? = nil, unsubsPct: Decimal? = nil) {
    self.domain = domain
    self.emailsSent = emailsSent
    self.bounces = bounces
    self.opens = opens
    self.clicks = clicks
    self.unsubs = unsubs
    self.delivered = delivered
    self.emailsPct = emailsPct
    self.bouncesPct = bouncesPct
    self.opensPct = opensPct
    self.clicksPct = clicksPct
    self.unsubsPct = unsubsPct
  }

  public enum CodingKeys: String, CodingKey {
    case domain
    case emailsSent = "emails_sent"
    case bounces
    case opens
    case clicks
    case unsubs
    case delivered
    case emailsPct = "emails_pct"
    case bouncesPct = "bounces_pct"
    case opensPct = "opens_pct"
    case clicksPct = "clicks_pct"
    case unsubsPct = "unsubs_pct"
  }
}
