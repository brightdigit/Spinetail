**STRUCT**

# `EcommerceStore2`

```swift
public struct EcommerceStore2: Codable
```

An individual store in an account.

## Properties
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

The store domain.

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

## Methods
### `init(name:platform:domain:isSyncing:emailAddress:currencyCode:moneyFormat:primaryLocale:timezone:phone:address:)`

```swift
public init(name: String? = nil, platform: String? = nil, domain: String? = nil, isSyncing: Bool? = nil, emailAddress: String? = nil, currencyCode: String? = nil, moneyFormat: String? = nil, primaryLocale: String? = nil, timezone: String? = nil, phone: String? = nil, address: Address? = nil)
```
