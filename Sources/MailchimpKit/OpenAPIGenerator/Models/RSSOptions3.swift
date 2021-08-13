import Foundation

/** [RSS](https://mailchimp.com/help/share-your-blog-posts-with-mailchimp/) options for a campaign. */

public struct RSSOptions3: Codable {
  public enum Frequency: String, Codable {
    case daily
    case weekly
    case monthly
  }

  /** The URL for the RSS feed. */
  public var feedUrl: String?
  /** The frequency of the RSS Campaign. */
  public var frequency: Frequency?
  public var schedule: SendingSchedule?
  /** The date the campaign was last sent. */
  public var lastSent: Date?
  /** Whether to add CSS to images in the RSS feed to constrain their width in campaigns. */
  public var constrainRssImg: Bool?

  public init(feedUrl: String? = nil, frequency: Frequency? = nil, schedule: SendingSchedule? = nil, lastSent: Date? = nil, constrainRssImg: Bool? = nil) {
    self.feedUrl = feedUrl
    self.frequency = frequency
    self.schedule = schedule
    self.lastSent = lastSent
    self.constrainRssImg = constrainRssImg
  }

  public enum CodingKeys: String, CodingKey {
    case feedUrl = "feed_url"
    case frequency
    case schedule
    case lastSent = "last_sent"
    case constrainRssImg = "constrain_rss_img"
  }
}
