import Foundation

/** An array of campaigns. */

public struct InlineResponse2005: Codable {
  /** An array of campaigns. */
  public var campaigns: [Campaign4]?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(campaigns: [Campaign4]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.campaigns = campaigns
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case campaigns
    case totalItems = "total_items"
    case links = "_links"
  }
}
