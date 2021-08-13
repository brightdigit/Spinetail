import Foundation

/** Add a new Batch Webook. */

public struct BatchWebhook: Codable {
  /** A valid URL for the Webhook. */
  public var url: String

  public init(url: String) {
    self.url = url
  }
}
