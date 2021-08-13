import Foundation

public struct CampaignReports1Timeseries: Codable {
  /** The date and time for the series in ISO 8601 format. */
  public var timestamp: Date?
  /** The number of emails sent in the timeseries. */
  public var emailsSent: Int?
  /** The number of unique opens in the timeseries. */
  public var uniqueOpens: Int?
  /** The number of clicks in the timeseries. */
  public var recipientsClicks: Int?

  public init(timestamp: Date? = nil, emailsSent: Int? = nil, uniqueOpens: Int? = nil, recipientsClicks: Int? = nil) {
    self.timestamp = timestamp
    self.emailsSent = emailsSent
    self.uniqueOpens = uniqueOpens
    self.recipientsClicks = recipientsClicks
  }

  public enum CodingKeys: String, CodingKey {
    case timestamp
    case emailsSent = "emails_sent"
    case uniqueOpens = "unique_opens"
    case recipientsClicks = "recipients_clicks"
  }
}
