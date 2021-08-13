import Foundation

public struct ActionsScheduleBody: Codable {
  /** The UTC date and time to schedule the campaign for delivery in ISO 8601 format. Campaigns may only be scheduled to send on the quarter-hour (:00, :15, :30, :45). */
  public var scheduleTime: Date
  /** Choose whether the campaign should use [Timewarp](https://mailchimp.com/help/use-timewarp/) when sending. Campaigns scheduled with Timewarp are localized based on the recipients&#x27; time zones. For example, a Timewarp campaign with a &#x60;schedule_time&#x60; of 13:00 will be sent to each recipient at 1:00pm in their local time. Cannot be set to &#x60;true&#x60; for campaigns using [Batch Delivery](https://mailchimp.com/help/schedule-batch-delivery/). */
  public var timewarp: Bool?
  public var batchDelivery: BatchDelivery?

  public init(scheduleTime: Date, timewarp: Bool? = nil, batchDelivery: BatchDelivery? = nil) {
    self.scheduleTime = scheduleTime
    self.timewarp = timewarp
    self.batchDelivery = batchDelivery
  }

  public enum CodingKeys: String, CodingKey {
    case scheduleTime = "schedule_time"
    case timewarp
    case batchDelivery = "batch_delivery"
  }
}
