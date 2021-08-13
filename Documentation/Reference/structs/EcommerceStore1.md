**STRUCT**

# `EcommerceStore1`

```swift
public struct EcommerceStore1: Codable
```

An individual store in an account.

## Properties
### `_id`

```swift
public var _id: String?
```

The unique identifier for the store.

### `listId`

```swift
public var listId: String?
```

The unique identifier for the list that&#x27;s associated with the store. The &#x60;list_id&#x60; for a specific store can&#x27;t change.

### `name`

```swift
public var name: String?
```

The name of the store.

### `platform`

```swift
public var platform: String?
```

The e-commerce platform of the store.

### `domain`

```swift
public var domain: String?
```

The store domain.  The store domain must be unique within a user account.

### `isSyncing`

```swift
public var isSyncing: Bool?
```

Whether to disable automations because the store is currently [syncing](https://mailchimp.com/developer/marketing/docs/e-commerce/#pausing-store-automations).

### `emailAddress`

```swift
public var emailAddress: String?
```

The email address for the store.

### `currencyCode`

```swift
public var currencyCode: String?
```

The three-letter ISO 4217 code for the currency that the store accepts.

### `moneyFormat`

```swift
public var moneyFormat: String?
```

The currency format for the store. For example: &#x60;$&#x60;, &#x60;£&#x60;, etc.

### `primaryLocale`

```swift
public var primaryLocale: String?
```

The primary locale for the store. For example: &#x60;en&#x60;, &#x60;de&#x60;, etc.

### `timezone`

```swift
public var timezone: String?
```

The timezone for the store.

### `phone`

```swift
public var phone: String?
```

The store phone number.

### `address`

```swift
public var address: Address?
```

### `connectedSite`

```swift
public var connectedSite: ConnectedSite2?
```

### `automations`

```swift
public var automations: Automations?
```

### `listIsActive`

```swift
public var listIsActive: Bool?
```

The status of the list connected to the store, namely if it&#x27;s deleted or disabled.

### `createdAt`

```swift
public var createdAt: Date?
```

The date and time the store was created in ISO 8601 format.

### `updatedAt`

```swift
public var updatedAt: Date?
```

The date and time the store was last updated in ISO 8601 format.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(_id:listId:name:platform:domain:isSyncing:emailAddress:currencyCode:moneyFormat:primaryLocale:timezone:phone:address:connectedSite:automations:listIsActive:createdAt:updatedAt:links:)`

```swift
public init(_id: String? = nil, listId: String? = nil, name: String? = nil, platform: String? = nil, domain: String? = nil, isSyncing: Bool? = nil, emailAddress: String? = nil, currencyCode: String? = nil, moneyFormat: String? = nil, primaryLocale: String? = nil, timezone: String? = nil, phone: String? = nil, address: Address? = nil, connectedSite: ConnectedSite2? = nil, automations: Automations? = nil, listIsActive: Bool? = nil, createdAt: Date? = nil, updatedAt: Date? = nil, links: [ResourceLink]? = nil)
```
