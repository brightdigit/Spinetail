import Foundation

/** Update an existing Batch Webook. */

public struct BatchWebhook2: Codable {
  /** A valid URL for the Webhook. */
  public var url: String

  public init(url: String) {
    self.url = url
  }
}
