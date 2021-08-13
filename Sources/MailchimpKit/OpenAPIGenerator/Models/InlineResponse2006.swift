import Foundation

/** A collection of landing pages. */

public struct InlineResponse2006: Codable {
  /** The landing pages on the account */
  public var landingPages: [LandingPage3]?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(landingPages: [LandingPage3]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.landingPages = landingPages
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case landingPages = "landing_pages"
    case totalItems = "total_items"
    case links = "_links"
  }
}
