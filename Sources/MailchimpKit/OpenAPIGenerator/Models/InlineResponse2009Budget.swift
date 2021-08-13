import Foundation

public struct InlineResponse2009Budget: Codable {
  /** Duration of the ad in seconds */
  public var duration: Int?
  /** Total budget of the ad */
  public var totalAmount: Decimal?
  /** Currency code */
  public var currencyCode: String?

  public init(duration: Int? = nil, totalAmount: Decimal? = nil, currencyCode: String? = nil) {
    self.duration = duration
    self.totalAmount = totalAmount
    self.currencyCode = currencyCode
  }

  public enum CodingKeys: String, CodingKey {
    case duration
    case totalAmount = "total_amount"
    case currencyCode = "currency_code"
  }
}
