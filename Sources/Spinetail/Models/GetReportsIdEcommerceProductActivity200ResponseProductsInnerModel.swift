import Foundation

import PrchModel
public struct GetReportsIdEcommerceProductActivity200ResponseProductsInnerModel: Codable, Equatable, Content {
  public var currencyCode: String?

  public var imageURL: String?

  public var recommendationPurchased: Int?

  public var recommendationTotal: Int?

  public var sku: String?

  public var title: String?

  public var totalPurchased: Double?

  public var totalRevenue: Double?

  public init(currencyCode: String? = nil, imageURL: String? = nil, recommendationPurchased: Int? = nil, recommendationTotal: Int? = nil, sku: String? = nil, title: String? = nil, totalPurchased: Double? = nil, totalRevenue: Double? = nil) {
    self.currencyCode = currencyCode
    self.imageURL = imageURL
    self.recommendationPurchased = recommendationPurchased
    self.recommendationTotal = recommendationTotal
    self.sku = sku
    self.title = title
    self.totalPurchased = totalPurchased
    self.totalRevenue = totalRevenue
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case currencyCode = "currency_code"
    case imageURL = "image_url"
    case recommendationPurchased = "recommendation_purchased"
    case recommendationTotal = "recommendation_total"
    case sku
    case title
    case totalPurchased = "total_purchased"
    case totalRevenue = "total_revenue"
  }
}
