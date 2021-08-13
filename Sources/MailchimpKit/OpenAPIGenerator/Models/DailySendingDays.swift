import Foundation

/** The days of the week to send a daily RSS Campaign. */

public struct DailySendingDays: Codable {
  /** Sends the daily RSS Campaign on Sundays. */
  public var sunday: Bool?
  /** Sends the daily RSS Campaign on Mondays. */
  public var monday: Bool?
  /** Sends the daily RSS Campaign on Tuesdays. */
  public var tuesday: Bool?
  /** Sends the daily RSS Campaign on Wednesdays. */
  public var wednesday: Bool?
  /** Sends the daily RSS Campaign on Thursdays. */
  public var thursday: Bool?
  /** Sends the daily RSS Campaign on Fridays. */
  public var friday: Bool?
  /** Sends the daily RSS Campaign on Saturdays. */
  public var saturday: Bool?

  public init(sunday: Bool? = nil, monday: Bool? = nil, tuesday: Bool? = nil, wednesday: Bool? = nil, thursday: Bool? = nil, friday: Bool? = nil, saturday: Bool? = nil) {
    self.sunday = sunday
    self.monday = monday
    self.tuesday = tuesday
    self.wednesday = wednesday
    self.thursday = thursday
    self.friday = friday
    self.saturday = saturday
  }
}
