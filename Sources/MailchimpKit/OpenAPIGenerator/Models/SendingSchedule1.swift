import Foundation

/** The schedule for sending the RSS Campaign. */

public struct SendingSchedule1: Codable {
  public enum WeeklySendDay: String, Codable {
    case sunday
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
  }

  /** The hour to send the campaign in local time. Acceptable hours are 0-23. For example, &#x27;4&#x27; would be 4am in [your account&#x27;s default time zone](https://mailchimp.com/help/set-account-details/). */
  public var hour: Int?
  public var dailySend: DailySendingDays?
  /** The day of the week to send a weekly RSS Campaign. */
  public var weeklySendDay: WeeklySendDay?
  /** The day of the month to send a monthly RSS Campaign. Acceptable days are 0-31, where &#x27;0&#x27; is always the last day of a month. Months with fewer than the selected number of days will not have an RSS campaign sent out that day. For example, RSS Campaigns set to send on the 30th will not go out in February. */
  public var monthlySendDate: Decimal?

  public init(hour: Int? = nil, dailySend: DailySendingDays? = nil, weeklySendDay: WeeklySendDay? = nil, monthlySendDate: Decimal? = nil) {
    self.hour = hour
    self.dailySend = dailySend
    self.weeklySendDay = weeklySendDay
    self.monthlySendDate = monthlySendDate
  }

  public enum CodingKeys: String, CodingKey {
    case hour
    case dailySend = "daily_send"
    case weeklySendDay = "weekly_send_day"
    case monthlySendDate = "monthly_send_date"
  }
}
