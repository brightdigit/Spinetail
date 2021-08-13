import Foundation

/** Top open locations for a specific campaign. */

public struct OpenLocations: Codable {
  /** An array of objects, each representing a top location for opens. */
  public var locations: [OpenLocationsLocations]?
  /** The campaign id. */
  public var campaignId: String?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(locations: [OpenLocationsLocations]? = nil, campaignId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil) {
    self.locations = locations
    self.campaignId = campaignId
    self.totalItems = totalItems
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case locations
    case campaignId = "campaign_id"
    case totalItems = "total_items"
    case links = "_links"
  }
}
