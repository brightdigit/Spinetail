import Foundation

import PrchModel
/** The send checklist for the campaign. */
public struct SendChecklistModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** Whether the campaign is ready to send. */
  public var isReady: Bool?

  /** A list of feedback items to review before sending your campaign. */
  public var items: [ItemsInnerModel]?

  public init(links: [ResourceLinkModel]? = nil, isReady: Bool? = nil, items: [ItemsInnerModel]? = nil) {
    self.links = links
    self.isReady = isReady
    self.items = items
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case isReady = "is_ready"
    case items
  }
}
