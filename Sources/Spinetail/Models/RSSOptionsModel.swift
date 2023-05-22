import Foundation

import PrchModel
/** [RSS](https://mailchimp.com/help/share-your-blog-posts-with-mailchimp/) options for a campaign. */
public struct RSSOptionsModel: Codable, Equatable, Content {
  /** The frequency of the RSS Campaign. */
  public enum AutomationsAutomationsFrequency: String, Codable, Equatable, CaseIterable {
    case daily
    case weekly
    case monthly
  }

  /** Whether to add CSS to images in the RSS feed to constrain their width in campaigns. */
  public var constrainRssImg: Bool?

  /** The URL for the RSS feed. */
  public var feedURL: URL?

  /** The frequency of the RSS Campaign. */
  public var frequency: Frequency?

  /** The date the campaign was last sent. */
  public var lastSent: DateTime?

  public var schedule: SendingScheduleModel?

  public init(constrainRssImg: Bool? = nil, feedURL: URL? = nil, frequency: Frequency? = nil, lastSent: DateTime? = nil, schedule: SendingScheduleModel? = nil) {
    self.constrainRssImg = constrainRssImg
    self.feedURL = feedURL
    self.frequency = frequency
    self.lastSent = lastSent
    self.schedule = schedule
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case constrainRssImg = "constrain_rss_img"
    case feedURL = "feed_url"
    case frequency
    case lastSent = "last_sent"
    case schedule
  }
}
