import Foundation

import PrchModel
/** Information about a specific connected site. */
public struct ConnectedSiteModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** The date and time the connected site was created in ISO 8601 format. */
  public var createdAt: DateTime?

  /** The connected site domain. */
  public var domain: String?

  /** The unique identifier for the site. */
  public var foreignId: String?

  /** The platform of the connected site. */
  public var platform: String?

  public var siteScript: ScriptModel?

  /** The unique identifier for the ecommerce store that's associated with the connected site (if any). The store_id for a specific connected site can't change. */
  public var storeId: String?

  /** The date and time the connected site was last updated in ISO 8601 format. */
  public var updatedAt: DateTime?

  public init(links: [ResourceLinkModel]? = nil, createdAt: DateTime? = nil, domain: String? = nil, foreignId: String? = nil, platform: String? = nil, siteScript: ScriptModel? = nil, storeId: String? = nil, updatedAt: DateTime? = nil) {
    self.links = links
    self.createdAt = createdAt
    self.domain = domain
    self.foreignId = foreignId
    self.platform = platform
    self.siteScript = siteScript
    self.storeId = storeId
    self.updatedAt = updatedAt
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case createdAt = "created_at"
    case domain
    case foreignId = "foreign_id"
    case platform
    case siteScript = "site_script"
    case storeId = "store_id"
    case updatedAt = "updated_at"
  }
}
