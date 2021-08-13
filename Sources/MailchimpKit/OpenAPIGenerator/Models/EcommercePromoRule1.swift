import Foundation

/** Information about an Ecommerce Store&#x27;s specific Promo Rule */

public struct EcommercePromoRule1: Codable {
  public enum ModelType: String, Codable {
    case fixed
    case percentage
  }

  public enum Target: String, Codable {
    case perItem = "per_item"
    case total
    case shipping
  }

  /** A unique identifier for the promo rule. If Ecommerce platform does not support promo rule, use promo code id as promo rule id. Restricted to UTF-8 characters with max length 50. */
  public var _id: String?
  /** The title that will show up in promotion campaign. Restricted to UTF-8 characters with max length of 100 bytes. */
  public var title: String?
  /** The description of a promotion restricted to UTF-8 characters with max length 255. */
  public var _description: String?
  /** The date and time when the promotion is in effect in ISO 8601 format. */
  public var startsAt: Date?
  /** The date and time when the promotion ends. Must be after starts_at and in ISO 8601 format. */
  public var endsAt: String?
  /** The amount of the promo code discount. If &#x27;type&#x27; is &#x27;fixed&#x27;, the amount is treated as a monetary value. If &#x27;type&#x27; is &#x27;percentage&#x27;, amount must be a decimal value between 0.0 and 1.0, inclusive. */
  public var amount: Float?
  /** Type of discount. For free shipping set type to fixed. */
  public var type: ModelType?
  /** The target that the discount applies to. */
  public var target: Target?
  /** Whether the promo rule is currently enabled. */
  public var enabled: Bool?
  /** The date and time the promotion was created in ISO 8601 format. */
  public var createdAtForeign: Date?
  /** The date and time the promotion was updated in ISO 8601 format. */
  public var updatedAtForeign: Date?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(_id: String? = nil, title: String? = nil, _description: String? = nil, startsAt: Date? = nil, endsAt: String? = nil, amount: Float? = nil, type: ModelType? = nil, target: Target? = nil, enabled: Bool? = nil, createdAtForeign: Date? = nil, updatedAtForeign: Date? = nil, links: [ResourceLink]? = nil) {
    self._id = _id
    self.title = title
    self._description = _description
    self.startsAt = startsAt
    self.endsAt = endsAt
    self.amount = amount
    self.type = type
    self.target = target
    self.enabled = enabled
    self.createdAtForeign = createdAtForeign
    self.updatedAtForeign = updatedAtForeign
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case _id = "id"
    case title
    case _description = "description"
    case startsAt = "starts_at"
    case endsAt = "ends_at"
    case amount
    case type
    case target
    case enabled
    case createdAtForeign = "created_at_foreign"
    case updatedAtForeign = "updated_at_foreign"
    case links = "_links"
  }
}
