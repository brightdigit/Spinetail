import Foundation

import PrchModel
/** Update an existing Batch Webook. */
public struct BatchWebhook2Model: Codable, Equatable, Content {
  /** A valid URL for the Webhook. */
  public var url: String

  public init(url: String) {
    self.url = url
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case url
  }
}
