//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

import PrchModel
public struct GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfAudienceActivityRevenueInnerModel: Codable, Equatable, Content {

    public var date: String?

    public var revenue: Double?

    public init(date: String? = nil, revenue: Double? = nil) {
        self.date = date
        self.revenue = revenue
    }

    public enum CodingKeys: String, CodingKey {
        case date = "date"
        case revenue = "revenue"
    }


}
