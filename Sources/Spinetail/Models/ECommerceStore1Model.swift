import Foundation

import PrchModel
/** An individual store in an account. */
public struct ECommerceStore1Model: Codable, Equatable, Content {
  /** The three-letter ISO 4217 code for the currency that the store accepts. */
  public var currencyCode: String

  /** The unique identifier for the store. */
  public var id: String

  /** The unique identifier for the list associated with the store. The `list_id` for a specific store cannot change. */
  public var listId: String

  /** The name of the store. */
  public var name: String

  public var address: Address1Model?

  /** The store domain. This parameter is required for Connected Sites and Google Ads. */
  public var domain: String?

  /** The email address for the store. */
  public var emailAddress: String?

  /** Whether to disable automations because the store is currently [syncing](https://mailchimp.com/developer/marketing/docs/e-commerce/#pausing-store-automations). */
  public var isSyncing: Bool?

  /** The currency format for the store. For example: `$`, `£`, etc. */
  public var moneyFormat: String?

  /** The store phone number. */
  public var phone: String?

  /** The e-commerce platform of the store. */
  public var platform: String?

  /** The primary locale for the store. For example: `en`, `de`, etc. */
  public var primaryLocale: String?

  /** The timezone for the store. */
  public var timezone: String?

  public init(currencyCode: String, id: String, listId: String, name: String, address: Address1Model? = nil, domain: String? = nil, emailAddress: String? = nil, isSyncing: Bool? = nil, moneyFormat: String? = nil, phone: String? = nil, platform: String? = nil, primaryLocale: String? = nil, timezone: String? = nil) {
    self.currencyCode = currencyCode
    self.id = id
    self.listId = listId
    self.name = name
    self.address = address
    self.domain = domain
    self.emailAddress = emailAddress
    self.isSyncing = isSyncing
    self.moneyFormat = moneyFormat
    self.phone = phone
    self.platform = platform
    self.primaryLocale = primaryLocale
    self.timezone = timezone
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case currencyCode = "currency_code"
    case id
    case listId = "list_id"
    case name
    case address
    case domain
    case emailAddress = "email_address"
    case isSyncing = "is_syncing"
    case moneyFormat = "money_format"
    case phone
    case platform
    case primaryLocale = "primary_locale"
    case timezone
  }
}
