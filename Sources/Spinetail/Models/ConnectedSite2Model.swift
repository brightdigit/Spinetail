import Foundation

import PrchModel
/** The Connected Site associated with the store. */
public struct ConnectedSite2Model: Codable, Equatable, Content {
  /** The unique identifier for the connected site. */
  public var siteForeignId: String?

  public var siteScript: Script1Model?

  public init(siteForeignId: String? = nil, siteScript: Script1Model? = nil) {
    self.siteForeignId = siteForeignId
    self.siteScript = siteScript
  }

  public enum CodingKeys: String, CodingKey {
    case siteForeignId = "site_foreign_id"
    case siteScript = "site_script"
  }
}
