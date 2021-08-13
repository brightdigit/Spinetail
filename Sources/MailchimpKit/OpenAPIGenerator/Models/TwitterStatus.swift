import Foundation

/** An individual tweet. */

public struct TwitterStatus: Codable {
  /** The body of the tweet. */
  public var status: String?
  /** The Twitter handle for the author of the tweet. */
  public var screenName: String?
  /** The individual id for the tweet. */
  public var statusId: String?
  /** A timestamp for the tweet. */
  public var datetime: Date?
  /** A &#x27;true&#x27; or &#x27;false&#x27; status of whether the tweet is a retweet. */
  public var isRetweet: Bool?

  public init(status: String? = nil, screenName: String? = nil, statusId: String? = nil, datetime: Date? = nil, isRetweet: Bool? = nil) {
    self.status = status
    self.screenName = screenName
    self.statusId = statusId
    self.datetime = datetime
    self.isRetweet = isRetweet
  }

  public enum CodingKeys: String, CodingKey {
    case status
    case screenName = "screen_name"
    case statusId = "status_id"
    case datetime
    case isRetweet = "is_retweet"
  }
}
