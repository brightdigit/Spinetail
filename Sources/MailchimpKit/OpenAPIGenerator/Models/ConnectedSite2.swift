import Foundation

/** The Connected Site associated with the store. */

public struct ConnectedSite2: Codable {
  /** The unique identifier for the connected site. */
  public var siteForeignId: String?
  public var siteScript: Script?

  public init(siteForeignId: String? = nil, siteScript: Script? = nil) {
    self.siteForeignId = siteForeignId
    self.siteScript = siteScript
  }

  public enum CodingKeys: String, CodingKey {
    case siteForeignId = "site_foreign_id"
    case siteScript = "site_script"
  }
}
