import Foundation

import PrchModel
/** An individual tweet. */
public struct TwitterStatusModel: Codable, Equatable, Content {
  /** A timestamp for the tweet. */
  public var datetime: DateTime?

  /** A 'true' or 'false' status of whether the tweet is a retweet. */
  public var isRetweet: Bool?

  /** The Twitter handle for the author of the tweet. */
  public var screenName: String?

  /** The body of the tweet. */
  public var status: String?

  /** The individual id for the tweet. */
  public var statusId: String?

  public init(datetime: DateTime? = nil, isRetweet: Bool? = nil, screenName: String? = nil, status: String? = nil, statusId: String? = nil) {
    self.datetime = datetime
    self.isRetweet = isRetweet
    self.screenName = screenName
    self.status = status
    self.statusId = statusId
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case datetime
    case isRetweet = "is_retweet"
    case screenName = "screen_name"
    case status
    case statusId = "status_id"
  }
}
