import Foundation

/** The send checklist for the campaign. */

public struct SendChecklist: Codable {
  /** Whether the campaign is ready to send. */
  public var isReady: Bool?
  /** A list of feedback items to review before sending your campaign. */
  public var items: [SendChecklistItems]?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(isReady: Bool? = nil, items: [SendChecklistItems]? = nil, links: [ResourceLink]? = nil) {
    self.isReady = isReady
    self.items = items
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case isReady = "is_ready"
    case items
    case links = "_links"
  }
}
