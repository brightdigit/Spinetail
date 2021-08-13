import Foundation

/** Campaigns and Snippets found for given search term. */

public struct Campaigns: Codable {
  /** An array of matching campaigns and snippets. */
  public var results: [CampaignsResults]?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(results: [CampaignsResults]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.results = results
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case results
    case totalItems = "total_items"
    case links = "_links"
  }
}
