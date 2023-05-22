import Foundation

import PrchModel
public struct TimeseriesInnerModel: Codable, Equatable, Content {
  /** The number of emails sent in the timeseries. */
  public var emailsSent: Int?

  /** The number of clicks in the timeseries. */
  public var recipientsClicks: Int?

  /** The date and time for the series in ISO 8601 format. */
  public var timestamp: DateTime?

  /** The number of unique opens in the timeseries. */
  public var uniqueOpens: Int?

  public init(emailsSent: Int? = nil, recipientsClicks: Int? = nil, timestamp: DateTime? = nil, uniqueOpens: Int? = nil) {
    self.emailsSent = emailsSent
    self.recipientsClicks = recipientsClicks
    self.timestamp = timestamp
    self.uniqueOpens = uniqueOpens
  }

  public enum CodingKeys: String, CodingKey {
    case emailsSent = "emails_sent"
    case recipientsClicks = "recipients_clicks"
    case timestamp
    case uniqueOpens = "unique_opens"
  }
}
