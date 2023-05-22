import Foundation

import PrchModel
/** Add a new Batch Webook. */
public struct BatchWebhook1Model: Codable, Equatable, Content {
  /** A valid URL for the Webhook. */
  public var url: String

  public init(url: String) {
    self.url = url
  }

  public enum CodingKeys: String, CodingKey {
    case url
  }
}
