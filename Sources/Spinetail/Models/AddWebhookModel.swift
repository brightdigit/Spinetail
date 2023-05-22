import Foundation

import PrchModel
/** Configure a webhook for the given list. */
public struct AddWebhookModel: Codable, Equatable, Content {
  public var events: Events2Model?

  public var sources: Sources1Model?

  /** A valid URL for the Webhook. */
  public var url: String?

  public init(events: Events2Model? = nil, sources: Sources1Model? = nil, url: String? = nil) {
    self.events = events
    self.sources = sources
    self.url = url
  }

  public enum CodingKeys: String, CodingKey {
    case events
    case sources
    case url
  }
}
