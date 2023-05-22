import Foundation

import PrchModel
public struct GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryAverageOrderAmountModel: Codable, Equatable, Content {
  public var amount: Double?

  public var currencyCode: String?

  public init(amount: Double? = nil, currencyCode: String? = nil) {
    self.amount = amount
    self.currencyCode = currencyCode
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case amount
    case currencyCode = "currency_code"
  }
}
