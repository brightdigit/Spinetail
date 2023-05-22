import Foundation

import PrchModel
/** An individual store in an account. */
public struct ECommerceStoreModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  public var address: Address1Model?

  public var automations: AutomationsModel?

  public var connectedSite: ConnectedSite2Model?

  /** The date and time the store was created in ISO 8601 format. */
  public var createdAt: DateTime?

  /** The three-letter ISO 4217 code for the currency that the store accepts. */
  public var currencyCode: String?

  /** The store domain.  The store domain must be unique within a user account. */
  public var domain: String?

  /** The email address for the store. */
  public var emailAddress: String?

  /** The unique identifier for the store. */
  public var id: String?

  /** Whether to disable automations because the store is currently [syncing](https://mailchimp.com/developer/marketing/docs/e-commerce/#pausing-store-automations). */
  public var isSyncing: Bool?

  /** The unique identifier for the list that's associated with the store. The `list_id` for a specific store can't change. */
  public var listId: String?

  /** The status of the list connected to the store, namely if it's deleted or disabled. */
  public var listIsActive: Bool?

  /** The currency format for the store. For example: `$`, `£`, etc. */
  public var moneyFormat: String?

  /** The name of the store. */
  public var name: String?

  /** The store phone number. */
  public var phone: String?

  /** The e-commerce platform of the store. */
  public var platform: String?

  /** The primary locale for the store. For example: `en`, `de`, etc. */
  public var primaryLocale: String?

  /** The timezone for the store. */
  public var timezone: String?

  /** The date and time the store was last updated in ISO 8601 format. */
  public var updatedAt: DateTime?

  public init(links: [ResourceLinkModel]? = nil, address: Address1Model? = nil, automations: AutomationsModel? = nil, connectedSite: ConnectedSite2Model? = nil, createdAt: DateTime? = nil, currencyCode: String? = nil, domain: String? = nil, emailAddress: String? = nil, id: String? = nil, isSyncing: Bool? = nil, listId: String? = nil, listIsActive: Bool? = nil, moneyFormat: String? = nil, name: String? = nil, phone: String? = nil, platform: String? = nil, primaryLocale: String? = nil, timezone: String? = nil, updatedAt: DateTime? = nil) {
    self.links = links
    self.address = address
    self.automations = automations
    self.connectedSite = connectedSite
    self.createdAt = createdAt
    self.currencyCode = currencyCode
    self.domain = domain
    self.emailAddress = emailAddress
    self.id = id
    self.isSyncing = isSyncing
    self.listId = listId
    self.listIsActive = listIsActive
    self.moneyFormat = moneyFormat
    self.name = name
    self.phone = phone
    self.platform = platform
    self.primaryLocale = primaryLocale
    self.timezone = timezone
    self.updatedAt = updatedAt
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case address
    case automations
    case connectedSite = "connected_site"
    case createdAt = "created_at"
    case currencyCode = "currency_code"
    case domain
    case emailAddress = "email_address"
    case id
    case isSyncing = "is_syncing"
    case listId = "list_id"
    case listIsActive = "list_is_active"
    case moneyFormat = "money_format"
    case name
    case phone
    case platform
    case primaryLocale = "primary_locale"
    case timezone
    case updatedAt = "updated_at"
  }
}
