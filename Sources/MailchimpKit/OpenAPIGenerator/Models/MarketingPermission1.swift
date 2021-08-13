import Foundation

/** A single marketing permission a subscriber has either opted-in to or opted-out of. */

public struct MarketingPermission1: Codable {
  /** The id for the marketing permission on the list */
  public var marketingPermissionId: String?
  /** The text of the marketing permission. */
  public var text: String?
  /** If the subscriber has opted-in to the marketing permission. */
  public var enabled: Bool?

  public init(marketingPermissionId: String? = nil, text: String? = nil, enabled: Bool? = nil) {
    self.marketingPermissionId = marketingPermissionId
    self.text = text
    self.enabled = enabled
  }

  public enum CodingKeys: String, CodingKey {
    case marketingPermissionId = "marketing_permission_id"
    case text
    case enabled
  }
}
