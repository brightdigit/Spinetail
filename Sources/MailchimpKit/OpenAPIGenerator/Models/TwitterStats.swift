import Foundation

/** A summary of Twitter activity for a campaign. */

public struct TwitterStats: Codable {
  /** The number of tweets including a link to the campaign. */
  public var tweets: Int?
  /** The day and time of the first recorded tweet with a link to the campaign. */
  public var firstTweet: String?
  /** The day and time of the last recorded tweet with a link to the campaign. */
  public var lastTweet: String?
  /** The number of retweets that include a link to the campaign. */
  public var retweets: Int?
  /** A summary of tweets that include a link to the campaign. */
  public var statuses: [TwitterStatus]?

  public init(tweets: Int? = nil, firstTweet: String? = nil, lastTweet: String? = nil, retweets: Int? = nil, statuses: [TwitterStatus]? = nil) {
    self.tweets = tweets
    self.firstTweet = firstTweet
    self.lastTweet = lastTweet
    self.retweets = retweets
    self.statuses = statuses
  }

  public enum CodingKeys: String, CodingKey {
    case tweets
    case firstTweet = "first_tweet"
    case lastTweet = "last_tweet"
    case retweets
    case statuses
  }
}
