//
// EcommerceStore1.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** An individual store in an account. */

public struct EcommerceStore1: Codable {

    /** The unique identifier for the store. */
    public var _id: String?
    /** The unique identifier for the list that&#x27;s associated with the store. The &#x60;list_id&#x60; for a specific store can&#x27;t change. */
    public var listId: String?
    /** The name of the store. */
    public var name: String?
    /** The e-commerce platform of the store. */
    public var platform: String?
    /** The store domain.  The store domain must be unique within a user account. */
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
    public var connectedSite: ConnectedSite2?
    public var automations: Automations?
    /** The status of the list connected to the store, namely if it&#x27;s deleted or disabled. */
    public var listIsActive: Bool?
    /** The date and time the store was created in ISO 8601 format. */
    public var createdAt: Date?
    /** The date and time the store was last updated in ISO 8601 format. */
    public var updatedAt: Date?
    /** A list of link types and descriptions for the API schema documents. */
    public var links: [ResourceLink]?

    public init(_id: String? = nil, listId: String? = nil, name: String? = nil, platform: String? = nil, domain: String? = nil, isSyncing: Bool? = nil, emailAddress: String? = nil, currencyCode: String? = nil, moneyFormat: String? = nil, primaryLocale: String? = nil, timezone: String? = nil, phone: String? = nil, address: Address? = nil, connectedSite: ConnectedSite2? = nil, automations: Automations? = nil, listIsActive: Bool? = nil, createdAt: Date? = nil, updatedAt: Date? = nil, links: [ResourceLink]? = nil) {
        self._id = _id
        self.listId = listId
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
        self.connectedSite = connectedSite
        self.automations = automations
        self.listIsActive = listIsActive
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.links = links
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case listId = "list_id"
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
        case connectedSite = "connected_site"
        case automations
        case listIsActive = "list_is_active"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case links = "_links"
    }

}