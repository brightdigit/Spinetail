import Foundation

import PrchModel
/** [RSS](https://mailchimp.com/help/share-your-blog-posts-with-mailchimp/) options for a campaign. */
public struct RSSOptions3Model: Codable, Equatable, Content {
  /** The frequency of the RSS Campaign. */
  public enum AutomationsAutomationsFrequency: String, Codable, Equatable, CaseIterable {
    case daily
    case weekly
    case monthly
  }

  /** The URL for the RSS feed. */
  public var feedURL: URL

  /** The frequency of the RSS Campaign. */
  public var frequency: Frequency

  /** Whether to add CSS to images in the RSS feed to constrain their width in campaigns. */
  public var constrainRssImg: Bool?

  /** The date the campaign was last sent. */
  public var lastSent: DateTime?

  public var schedule: SendingSchedule1Model?

  public init(feedURL: URL, frequency: Frequency, constrainRssImg: Bool? = nil, lastSent: DateTime? = nil, schedule: SendingSchedule1Model? = nil) {
    self.feedURL = feedURL
    self.frequency = frequency
    self.constrainRssImg = constrainRssImg
    self.lastSent = lastSent
    self.schedule = schedule
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case feedURL = "feed_url"
    case frequency
    case constrainRssImg = "constrain_rss_img"
    case lastSent = "last_sent"
    case schedule
  }
}
