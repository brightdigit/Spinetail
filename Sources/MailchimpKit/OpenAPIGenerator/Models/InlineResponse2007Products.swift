import Foundation

public struct InlineResponse2007Products: Codable {
  public var title: String?
  public var sku: String?
  public var imageUrl: String?
  public var totalRevenue: Decimal?
  public var totalPurchased: Decimal?
  public var currencyCode: String?
  public var recommendationTotal: Int?
  public var recommendationPurchased: Int?

  public init(title: String? = nil, sku: String? = nil, imageUrl: String? = nil, totalRevenue: Decimal? = nil, totalPurchased: Decimal? = nil, currencyCode: String? = nil, recommendationTotal: Int? = nil, recommendationPurchased: Int? = nil) {
    self.title = title
    self.sku = sku
    self.imageUrl = imageUrl
    self.totalRevenue = totalRevenue
    self.totalPurchased = totalPurchased
    self.currencyCode = currencyCode
    self.recommendationTotal = recommendationTotal
    self.recommendationPurchased = recommendationPurchased
  }

  public enum CodingKeys: String, CodingKey {
    case title
    case sku
    case imageUrl = "image_url"
    case totalRevenue = "total_revenue"
    case totalPurchased = "total_purchased"
    case currencyCode = "currency_code"
    case recommendationTotal = "recommendation_total"
    case recommendationPurchased = "recommendation_purchased"
  }
}
