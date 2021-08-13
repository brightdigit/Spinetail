import Foundation

/** An individual store in an account. */

public struct EcommerceStore2: Codable {
  /** The name of the store. */
  public var name: String?
  /** The e-commerce platform of the store. */
  public var platform: String?
  /** The store domain. */
  public var domain: String?
  /** Whether to disable automations because the store is currently [syncing](https://mailchimp.com/developer/marketing/docs/e-commerce/#pausing-store-automations). */
  public var isSyncing: Bool?
  /** The email address for the store. */
  public var emailAddress: String?
  /** The three-letter ISO 4217 code for the currency that the store accepts. */
  public var currencyCode: String?
  /** The currency format for the store. For example: &#x60;$&#x60;, &#x60;£&#x60;, etc. */
  public var moneyFormat: String?
  /** The primary locale for the store. For example: &#x60;en&#x60;, &#x60;de&#x60;, etc. */
  public var primaryLocale: String?
  /** The timezone for the store. */
  public var timezone: String?
  /** The store phone number. */
  public var phone: String?
  public var address: Address?

  public init(name: String? = nil, platform: String? = nil, domain: String? = nil, isSyncing: Bool? = nil, emailAddress: String? = nil, currencyCode: String? = nil, moneyFormat: String? = nil, primaryLocale: String? = nil, timezone: String? = nil, phone: String? = nil, address: Address? = nil) {
    self.name = name
    self.platform = platform
    self.domain = domain
    self.isSyncing = isSyncing
    self.emailAddress = emailAddress
    self.currencyCode = currencyCode
    self.moneyFormat = moneyFormat
    self.primaryLocale = primaryLocale
    self.timezone = timezone
    self.phone = phone
    self.address = address
  }

  public enum CodingKeys: String, CodingKey {
    case name
    case platform
    case domain
    case isSyncing = "is_syncing"
    case emailAddress = "email_address"
    case currencyCode = "currency_code"
    case moneyFormat = "money_format"
    case primaryLocale = "primary_locale"
    case timezone
    case phone
    case address
  }
}
