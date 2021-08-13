import Foundation

/** Report summary of facebook ad */

public struct InlineResponse20011ReportSummary: Codable {
  public var reach: Int?
  public var impressions: Int?
  public var clicks: Int?
  public var clickRate: Decimal?
  public var uniqueClicks: Int?
  public var firstTimeBuyers: Int?
  public var ecommerce: InlineResponse20011ReportSummaryEcommerce?
  public var totalProductsSold: Int?
  public var totalOrders: Int?
  public var averageOrderAmount: InlineResponse20011ReportSummaryAverageOrderAmount?
  public var costPerClick: InlineResponse20011ReportSummaryAverageOrderAmount?
  public var averageDailyBudget: InlineResponse20011ReportSummaryAverageOrderAmount?
  public var likes: Int?
  public var comments: Int?
  public var shares: Int?
  public var hasExtendedAdDuration: Bool?
  public var extendedAt: InlineResponse20011ReportSummaryExtendedAt?
  public var returnOnInvestment: Decimal?

  public init(reach: Int? = nil, impressions: Int? = nil, clicks: Int? = nil, clickRate: Decimal? = nil, uniqueClicks: Int? = nil, firstTimeBuyers: Int? = nil, ecommerce: InlineResponse20011ReportSummaryEcommerce? = nil, totalProductsSold: Int? = nil, totalOrders: Int? = nil, averageOrderAmount: InlineResponse20011ReportSummaryAverageOrderAmount? = nil, costPerClick: InlineResponse20011ReportSummaryAverageOrderAmount? = nil, averageDailyBudget: InlineResponse20011ReportSummaryAverageOrderAmount? = nil, likes: Int? = nil, comments: Int? = nil, shares: Int? = nil, hasExtendedAdDuration: Bool? = nil, extendedAt: InlineResponse20011ReportSummaryExtendedAt? = nil, returnOnInvestment: Decimal? = nil) {
    self.reach = reach
    self.impressions = impressions
    self.clicks = clicks
    self.clickRate = clickRate
    self.uniqueClicks = uniqueClicks
    self.firstTimeBuyers = firstTimeBuyers
    self.ecommerce = ecommerce
    self.totalProductsSold = totalProductsSold
    self.totalOrders = totalOrders
    self.averageOrderAmount = averageOrderAmount
    self.costPerClick = costPerClick
    self.averageDailyBudget = averageDailyBudget
    self.likes = likes
    self.comments = comments
    self.shares = shares
    self.hasExtendedAdDuration = hasExtendedAdDuration
    self.extendedAt = extendedAt
    self.returnOnInvestment = returnOnInvestment
  }

  public enum CodingKeys: String, CodingKey {
    case reach
    case impressions
    case clicks
    case clickRate = "click_rate"
    case uniqueClicks = "unique_clicks"
    case firstTimeBuyers = "first_time_buyers"
    case ecommerce
    case totalProductsSold = "total_products_sold"
    case totalOrders = "total_orders"
    case averageOrderAmount = "average_order_amount"
    case costPerClick = "cost_per_click"
    case averageDailyBudget = "average_daily_budget"
    case likes
    case comments
    case shares
    case hasExtendedAdDuration = "has_extended_ad_duration"
    case extendedAt = "extended_at"
    case returnOnInvestment = "return_on_investment"
  }
}
