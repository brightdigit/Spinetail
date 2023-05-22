import Foundation

import PrchModel
/** The HTML content for a landing page. */
public struct LandingPageContentModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** The raw HTML for the landing page. */
  public var html: String?

  /** The JSON Structure for the landing page */
  public var json: String?

  public init(links: [ResourceLinkModel]? = nil, html: String? = nil, json: String? = nil) {
    self.links = links
    self.html = html
    self.json = json
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case html
    case json
  }
}
