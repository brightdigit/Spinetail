import Foundation

public struct Orders1Promos: Codable {
  public enum ModelType: String, Codable {
    case fixed
    case percentage
  }

  /** The Promo Code */
  public var code: String?
  /** The amount of discount applied on the total price. For example if the total cost was $100 and the customer paid $95.5, amount_discounted will be 4.5 For free shipping set amount_discounted to 0 */
  public var amountDiscounted: Decimal?
  /** Type of discount. For free shipping set type to fixed */
  public var type: ModelType?

  public init(code: String? = nil, amountDiscounted: Decimal? = nil, type: ModelType? = nil) {
    self.code = code
    self.amountDiscounted = amountDiscounted
    self.type = type
  }

  public enum CodingKeys: String, CodingKey {
    case code
    case amountDiscounted = "amount_discounted"
    case type
  }
}
