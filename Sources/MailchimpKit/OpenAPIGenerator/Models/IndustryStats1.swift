import Foundation

/** The [average campaign statistics](https://mailchimp.com/resources/research/email-marketing-benchmarks/?utm_source&#x3D;mc-api&amp;utm_medium&#x3D;docs&amp;utm_campaign&#x3D;apidocs) for all campaigns in the account&#x27;s specified industry. */

public struct IndustryStats1: Codable {
  /** The average unique open rate for all campaigns in the account&#x27;s specified industry. */
  public var openRate: Decimal?
  /** The average bounce rate for all campaigns in the account&#x27;s specified industry. */
  public var bounceRate: Decimal?
  /** The average unique click rate for all campaigns in the account&#x27;s specified industry. */
  public var clickRate: Decimal?

  public init(openRate: Decimal? = nil, bounceRate: Decimal? = nil, clickRate: Decimal? = nil) {
    self.openRate = openRate
    self.bounceRate = bounceRate
    self.clickRate = clickRate
  }

  public enum CodingKeys: String, CodingKey {
    case openRate = "open_rate"
    case bounceRate = "bounce_rate"
    case clickRate = "click_rate"
  }
}
