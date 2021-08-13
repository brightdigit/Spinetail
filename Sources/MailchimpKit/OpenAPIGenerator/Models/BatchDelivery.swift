import Foundation

/** Choose whether the campaign should use [Batch Delivery](https://mailchimp.com/help/schedule-batch-delivery/). Cannot be set to &#x60;true&#x60; for campaigns using [Timewarp](https://mailchimp.com/help/use-timewarp/). */

public struct BatchDelivery: Codable {
  /** The delay, in minutes, between batches. */
  public var batchDelay: Int
  /** The number of batches for the campaign send. */
  public var batchCount: Int

  public init(batchDelay: Int, batchCount: Int) {
    self.batchDelay = batchDelay
    self.batchCount = batchCount
  }

  public enum CodingKeys: String, CodingKey {
    case batchDelay = "batch_delay"
    case batchCount = "batch_count"
  }
}
