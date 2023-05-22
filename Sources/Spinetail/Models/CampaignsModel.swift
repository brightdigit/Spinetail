import Foundation

import PrchModel
/** Campaigns and Snippets found for given search term. */
public struct CampaignsModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** An array of matching campaigns and snippets. */
  public var results: [ResultsInnerModel]?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, results: [ResultsInnerModel]? = nil, totalItems: Int? = nil) {
    self.links = links
    self.results = results
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case results
    case totalItems = "total_items"
  }
}
