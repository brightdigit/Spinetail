//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

import PrchModel
public struct GetAllFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryEcommerceModel: Codable, Equatable, Content {

    public var averageOrderRevenue: Double?

    public var currencyCode: String?

    public var totalRevenue: Double?

    public init(averageOrderRevenue: Double? = nil, currencyCode: String? = nil, totalRevenue: Double? = nil) {
        self.averageOrderRevenue = averageOrderRevenue
        self.currencyCode = currencyCode
        self.totalRevenue = totalRevenue
    }

    public enum CodingKeys: String, CodingKey {
        case averageOrderRevenue = "average_order_revenue"
        case currencyCode = "currency_code"
        case totalRevenue = "total_revenue"
    }


}
