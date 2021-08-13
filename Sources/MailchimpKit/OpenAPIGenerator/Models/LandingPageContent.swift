import Foundation

/** The HTML content for a landing page. */

public struct LandingPageContent: Codable {
  /** The raw HTML for the landing page. */
  public var html: String?
  /** The JSON Structure for the landing page */
  public var json: String?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(html: String? = nil, json: String? = nil, links: [ResourceLink]? = nil) {
    self.html = html
    self.json = json
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case html
    case json
    case links = "_links"
  }
}
