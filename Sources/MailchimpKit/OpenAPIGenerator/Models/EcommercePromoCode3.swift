import Foundation

/** Information about an Ecommerce Store&#x27;s specific Promo Code */

public struct EcommercePromoCode3: Codable {
  /** A unique identifier for the promo Code. */
  public var _id: String?
  /** The discount code. Restricted to UTF-8 characters with max length 50. */
  public var code: String?
  /** The url that should be used in the promotion campaign restricted to UTF-8 characters with max length 2000. */
  public var redemptionUrl: String?
  /** Number of times promo code has been used. */
  public var usageCount: Int?
  /** Whether the promo code is currently enabled. */
  public var enabled: Bool?
  /** The date and time the promotion was created in ISO 8601 format. */
  public var createdAtForeign: Date?
  /** The date and time the promotion was updated in ISO 8601 format. */
  public var updatedAtForeign: Date?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(_id: String? = nil, code: String? = nil, redemptionUrl: String? = nil, usageCount: Int? = nil, enabled: Bool? = nil, createdAtForeign: Date? = nil, updatedAtForeign: Date? = nil, links: [ResourceLink]? = nil) {
    self._id = _id
    self.code = code
    self.redemptionUrl = redemptionUrl
    self.usageCount = usageCount
    self.enabled = enabled
    self.createdAtForeign = createdAtForeign
    self.updatedAtForeign = updatedAtForeign
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case code
    case redemptionUrl = "redemption_url"
    case usageCount = "usage_count"
    case enabled
    case createdAtForeign = "created_at_foreign"
    case updatedAtForeign = "updated_at_foreign"
    case links = "_links"
  }
}
