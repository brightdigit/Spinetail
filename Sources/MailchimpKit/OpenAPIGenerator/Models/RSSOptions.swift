import Foundation

/** [RSS](https://mailchimp.com/help/share-your-blog-posts-with-mailchimp/) options, specific to an RSS campaign. */

public struct RSSOptions: Codable {
  public enum Frequency: String, Codable {
    case daily
    case weekly
    case monthly
  }

  /** The URL for the RSS feed. */
  public var feedUrl: String
  /** The frequency of the RSS Campaign. */
  public var frequency: Frequency
  public var schedule: SendingSchedule?
  /** Whether to add CSS to images in the RSS feed to constrain their width in campaigns. */
  public var constrainRssImg: Bool?

  public init(feedUrl: String, frequency: Frequency, schedule: SendingSchedule? = nil, constrainRssImg: Bool? = nil) {
    self.feedUrl = feedUrl
    self.frequency = frequency
    self.schedule = schedule
    self.constrainRssImg = constrainRssImg
  }

  public enum CodingKeys: String, CodingKey {
    case feedUrl = "feed_url"
    case frequency
    case schedule
    case constrainRssImg = "constrain_rss_img"
  }
}
