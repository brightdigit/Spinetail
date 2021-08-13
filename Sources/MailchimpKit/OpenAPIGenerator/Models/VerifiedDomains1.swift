import Foundation

/** The verified domains currently on the account. */

public struct VerifiedDomains1: Codable {
  /** The domains on the account */
  public var domains: [VerifiedDomains]?
  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(domains: [VerifiedDomains]? = nil, totalItems: Int? = nil) {
    self.domains = domains
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case domains
    case totalItems = "total_items"
  }
}
