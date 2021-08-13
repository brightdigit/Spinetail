import Foundation

/** A collection of connected sites in the account. */

public struct ConnectedSites: Codable {
  /** An array of objects, each representing a connected site. */
  public var sites: [ConnectedSite3]?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(sites: [ConnectedSite3]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.sites = sites
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case sites
    case totalItems = "total_items"
    case links = "_links"
  }
}
