import Foundation

/** Information about a specific connected site. */

public struct ConnectedSite1: Codable {
  /** The unique identifier for the site. */
  public var foreignId: String?
  /** The unique identifier for the ecommerce store that&#x27;s associated with the connected site (if any). The store_id for a specific connected site can&#x27;t change. */
  public var storeId: String?
  /** The platform of the connected site. */
  public var platform: String?
  /** The connected site domain. */
  public var domain: String?
  public var siteScript: Script1?
  /** The date and time the connected site was created in ISO 8601 format. */
  public var createdAt: Date?
  /** The date and time the connected site was last updated in ISO 8601 format. */
  public var updatedAt: Date?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(foreignId: String? = nil, storeId: String? = nil, platform: String? = nil, domain: String? = nil, siteScript: Script1? = nil, createdAt: Date? = nil, updatedAt: Date? = nil, links: [ResourceLink]? = nil) {
    self.foreignId = foreignId
    self.storeId = storeId
    self.platform = platform
    self.domain = domain
    self.siteScript = siteScript
    self.createdAt = createdAt
    self.updatedAt = updatedAt
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case foreignId = "foreign_id"
    case storeId = "store_id"
    case platform
    case domain
    case siteScript = "site_script"
    case createdAt = "created_at"
    case updatedAt = "updated_at"
    case links = "_links"
  }
}
