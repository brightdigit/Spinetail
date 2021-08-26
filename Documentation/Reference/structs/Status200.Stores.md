**STRUCT**

# `Status200.Stores`

```swift
public struct Stores: Model
```

An individual store in an account.

## Properties
### `links`

```swift
public var links: [Links]?
```

A list of link types and descriptions for the API schema documents.

### `address`

```swift
public var address: Address?
```

The store address.

### `automations`

```swift
public var automations: Automations?
```

Details for the automations attached to this store.

### `connectedSite`

```swift
public var connectedSite: ConnectedSite?
```

The Connected Site associated with the store.

### `createdAt`

```swift
public var createdAt: DateTime
```

The date and time the store was created in ISO 8601 format.

### `currencyCode`

```swift
public var currencyCode: String?
```

The three-letter ISO 4217 code for the currency that the store accepts.

### `domain`

```swift
public var domain: String?
```

The store domain.  The store domain must be unique within a user account.

### `emailAddress`

```swift
public var emailAddress: String?
```

The email address for the store.

### `id`

```swift
public var id: String?
```

The unique identifier for the store.

### `isSyncing`

```swift
public var isSyncing: Bool?
```

Whether to disable automations because the store is currently [syncing](https://mailchimp.com/developer/marketing/docs/e-commerce/#pausing-store-automations).

### `listId`

```swift
public var listId: String?
```

The unique identifier for the list that's associated with the store. The `list_id` for a specific store can't change.

### `listIsActive`

```swift
public var listIsActive: Bool?
```

The status of the list connected to the store, namely if it's deleted or disabled.

### `moneyFormat`

```swift
public var moneyFormat: String?
```

The currency format for the store. For example: `$`, `£`, etc.

### `name`

```swift
public var name: String?
```

The name of the store.

### `phone`

```swift
public var phone: String?
```

The store phone number.

### `platform`

```swift
public var platform: String?
```

The e-commerce platform of the store.

### `primaryLocale`

```swift
public var primaryLocale: String?
```

The primary locale for the store. For example: `en`, `de`, etc.

### `timezone`

```swift
public var timezone: String?
```

The timezone for the store.

### `updatedAt`

```swift
public var updatedAt: DateTime
```

The date and time the store was last updated in ISO 8601 format.

## Methods
### `init(links:address:automations:connectedSite:createdAt:currencyCode:domain:emailAddress:id:isSyncing:listId:listIsActive:moneyFormat:name:phone:platform:primaryLocale:timezone:updatedAt:)`

```swift
public init(links: [Links]? = nil, address: Address? = nil, automations: Automations? = nil, connectedSite: ConnectedSite? = nil, createdAt: Date? = nil, currencyCode: String? = nil, domain: String? = nil, emailAddress: String? = nil, id: String? = nil, isSyncing: Bool? = nil, listId: String? = nil, listIsActive: Bool? = nil, moneyFormat: String? = nil, name: String? = nil, phone: String? = nil, platform: String? = nil, primaryLocale: String? = nil, timezone: String? = nil, updatedAt: Date? = nil)
```

### `init(from:)`

```swift
public init(from decoder: Decoder) throws
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| decoder | The decoder to read data from. |

### `encode(to:)`

```swift
public func encode(to encoder: Encoder) throws
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| encoder | The encoder to write data to. |
