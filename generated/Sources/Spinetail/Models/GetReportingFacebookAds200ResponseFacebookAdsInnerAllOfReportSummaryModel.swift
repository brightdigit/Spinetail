//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

import PrchModel
/** Report summary of facebook ad */
public struct GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryModel: Codable, Equatable, Content {

    public var averageDailyBudget: GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryAverageOrderAmountModel?

    public var averageOrderAmount: GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryAverageOrderAmountModel?

    public var clickRate: Double?

    public var clicks: Int?

    public var comments: Int?

    public var costPerClick: GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryAverageOrderAmountModel?

    public var ecommerce: GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryEcommerceModel?

    public var extendedAt: GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryExtendedAtModel?

    public var firstTimeBuyers: Int?

    public var hasExtendedAdDuration: Bool?

    public var impressions: Int?

    public var likes: Int?

    public var reach: Int?

    public var returnOnInvestment: Double?

    public var shares: Int?

    public var totalOrders: Int?

    public var totalProductsSold: Int?

    public var uniqueClicks: Int?

    public init(averageDailyBudget: GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryAverageOrderAmountModel? = nil, averageOrderAmount: GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryAverageOrderAmountModel? = nil, clickRate: Double? = nil, clicks: Int? = nil, comments: Int? = nil, costPerClick: GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryAverageOrderAmountModel? = nil, ecommerce: GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryEcommerceModel? = nil, extendedAt: GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryExtendedAtModel? = nil, firstTimeBuyers: Int? = nil, hasExtendedAdDuration: Bool? = nil, impressions: Int? = nil, likes: Int? = nil, reach: Int? = nil, returnOnInvestment: Double? = nil, shares: Int? = nil, totalOrders: Int? = nil, totalProductsSold: Int? = nil, uniqueClicks: Int? = nil) {
        self.averageDailyBudget = averageDailyBudget
        self.averageOrderAmount = averageOrderAmount
        self.clickRate = clickRate
        self.clicks = clicks
        self.comments = comments
        self.costPerClick = costPerClick
        self.ecommerce = ecommerce
        self.extendedAt = extendedAt
        self.firstTimeBuyers = firstTimeBuyers
        self.hasExtendedAdDuration = hasExtendedAdDuration
        self.impressions = impressions
        self.likes = likes
        self.reach = reach
        self.returnOnInvestment = returnOnInvestment
        self.shares = shares
        self.totalOrders = totalOrders
        self.totalProductsSold = totalProductsSold
        self.uniqueClicks = uniqueClicks
    }

    public enum CodingKeys: String, CodingKey {
        case averageDailyBudget = "average_daily_budget"
        case averageOrderAmount = "average_order_amount"
        case clickRate = "click_rate"
        case clicks = "clicks"
        case comments = "comments"
        case costPerClick = "cost_per_click"
        case ecommerce = "ecommerce"
        case extendedAt = "extended_at"
        case firstTimeBuyers = "first_time_buyers"
        case hasExtendedAdDuration = "has_extended_ad_duration"
        case impressions = "impressions"
        case likes = "likes"
        case reach = "reach"
        case returnOnInvestment = "return_on_investment"
        case shares = "shares"
        case totalOrders = "total_orders"
        case totalProductsSold = "total_products_sold"
        case uniqueClicks = "unique_clicks"
    }


}
