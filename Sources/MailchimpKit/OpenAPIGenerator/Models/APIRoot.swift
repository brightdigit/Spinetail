import Foundation

/** The API root resource links to all other resources available in the API. */

public struct APIRoot: Codable {
  public enum PricingPlanType: String, Codable {
    case monthly
    case payAsYouGo = "pay_as_you_go"
    case foreverFree = "forever_free"
  }

  /** The Mailchimp account ID. */
  public var accountId: String?
  /** The ID associated with the user who owns this API key. If you can login to multiple accounts, this ID will be the same for each account. */
  public var loginId: String?
  /** The name of the account. */
  public var accountName: String?
  /** The account email address. */
  public var email: String?
  /** The first name tied to the account. */
  public var firstName: String?
  /** The last name tied to the account. */
  public var lastName: String?
  /** The username tied to the account. */
  public var username: String?
  /** URL of the avatar for the user. */
  public var avatarUrl: String?
  /** The [user role](https://mailchimp.com/help/manage-user-levels-in-your-account/) for the account. */
  public var role: String?
  /** The date and time that the account was created in ISO 8601 format. */
  public var memberSince: Date?
  /** The type of pricing plan the account is on. */
  public var pricingPlanType: PricingPlanType?
  /** Date of first payment for monthly plans. */
  public var firstPayment: Date?
  /** The timezone currently set for the account. */
  public var accountTimezone: String?
  /** The user-specified industry associated with the account. */
  public var accountIndustry: String?
  public var contact: AccountContact?
  /** Legacy - whether the account includes [Mailchimp Pro](https://mailchimp.com/help/about-mailchimp-pro/). */
  public var proEnabled: Bool?
  /** The date and time of the last login for this account in ISO 8601 format. */
  public var lastLogin: Date?
  /** The total number of subscribers across all lists in the account. */
  public var totalSubscribers: Int?
  public var industryStats: IndustryStats1?
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLink]?

  public init(accountId: String? = nil, loginId: String? = nil, accountName: String? = nil, email: String? = nil, firstName: String? = nil, lastName: String? = nil, username: String? = nil, avatarUrl: String? = nil, role: String? = nil, memberSince: Date? = nil, pricingPlanType: PricingPlanType? = nil, firstPayment: Date? = nil, accountTimezone: String? = nil, accountIndustry: String? = nil, contact: AccountContact? = nil, proEnabled: Bool? = nil, lastLogin: Date? = nil, totalSubscribers: Int? = nil, industryStats: IndustryStats1? = nil, links: [ResourceLink]? = nil) {
    self.accountId = accountId
    self.loginId = loginId
    self.accountName = accountName
    self.email = email
    self.firstName = firstName
    self.lastName = lastName
    self.username = username
    self.avatarUrl = avatarUrl
    self.role = role
    self.memberSince = memberSince
    self.pricingPlanType = pricingPlanType
    self.firstPayment = firstPayment
    self.accountTimezone = accountTimezone
    self.accountIndustry = accountIndustry
    self.contact = contact
    self.proEnabled = proEnabled
    self.lastLogin = lastLogin
    self.totalSubscribers = totalSubscribers
    self.industryStats = industryStats
    self.links = links
  }

  public enum CodingKeys: String, CodingKey {
    case accountId = "account_id"
    case loginId = "login_id"
    case accountName = "account_name"
    case email
    case firstName = "first_name"
    case lastName = "last_name"
    case username
    case avatarUrl = "avatar_url"
    case role
    case memberSince = "member_since"
    case pricingPlanType = "pricing_plan_type"
    case firstPayment = "first_payment"
    case accountTimezone = "account_timezone"
    case accountIndustry = "account_industry"
    case contact
    case proEnabled = "pro_enabled"
    case lastLogin = "last_login"
    case totalSubscribers = "total_subscribers"
    case industryStats = "industry_stats"
    case links = "_links"
  }
}
