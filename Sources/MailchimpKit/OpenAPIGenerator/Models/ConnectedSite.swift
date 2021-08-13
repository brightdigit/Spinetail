import Foundation

/** Information about a specific connected site. */

public struct ConnectedSite: Codable {
  /** The unique identifier for the site. */
  public var foreignId: String
  /** The connected site domain. */
  public var domain: String

  public init(foreignId: String, domain: String) {
    self.foreignId = foreignId
    self.domain = domain
  }

  public enum CodingKeys: String, CodingKey {
    case foreignId = "foreign_id"
    case domain
  }
}
