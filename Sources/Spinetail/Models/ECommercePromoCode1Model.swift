import Foundation

import PrchModel
/** Information about an Ecommerce Store's specific Promo Code. */
public struct ECommercePromoCode1Model: Codable, Equatable, Content {
  /** The discount code. Restricted to UTF-8 characters with max length 50. */
  public var code: String

  /** A unique identifier for the promo code. Restricted to UTF-8 characters with max length 50. */
  public var id: String

  /** The url that should be used in the promotion campaign restricted to UTF-8 characters with max length 2000. */
  public var redemptionURL: String

  /** The date and time the promotion was created in ISO 8601 format. */
  public var createdAtForeign: DateTime?

  /** Whether the promo code is currently enabled. */
  public var enabled: Bool?

  /** The date and time the promotion was updated in ISO 8601 format. */
  public var updatedAtForeign: DateTime?

  /** Number of times promo code has been used. */
  public var usageCount: Int?

  public init(code: String, id: String, redemptionURL: String, createdAtForeign: DateTime? = nil, enabled: Bool? = nil, updatedAtForeign: DateTime? = nil, usageCount: Int? = nil) {
    self.code = code
    self.id = id
    self.redemptionURL = redemptionURL
    self.createdAtForeign = createdAtForeign
    self.enabled = enabled
    self.updatedAtForeign = updatedAtForeign
    self.usageCount = usageCount
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case code
    case id
    case redemptionURL = "redemption_url"
    case createdAtForeign = "created_at_foreign"
    case enabled
    case updatedAtForeign = "updated_at_foreign"
    case usageCount = "usage_count"
  }
}
