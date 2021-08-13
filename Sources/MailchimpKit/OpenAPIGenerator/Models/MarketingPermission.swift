import Foundation

/** A single marketing permission a subscriber has either opted-in to or opted-out of. */

public struct MarketingPermission: Codable {
  /** The id for the marketing permission on the list */
  public var marketingPermissionId: String?
  /** If the subscriber has opted-in to the marketing permission. */
  public var enabled: Bool?

  public init(marketingPermissionId: String? = nil, enabled: Bool? = nil) {
    self.marketingPermissionId = marketingPermissionId
    self.enabled = enabled
  }

  public enum CodingKeys: String, CodingKey {
    case marketingPermissionId = "marketing_permission_id"
    case enabled
  }
}
