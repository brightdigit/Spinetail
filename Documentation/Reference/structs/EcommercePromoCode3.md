**STRUCT**

# `EcommercePromoCode3`

```swift
public struct EcommercePromoCode3: Codable
```

Information about an Ecommerce Store&#x27;s specific Promo Code

## Properties
### `_id`

```swift
public var _id: String?
```

A unique identifier for the promo Code.

### `code`

```swift
public var code: String?
```

The discount code. Restricted to UTF-8 characters with max length 50.

### `redemptionUrl`

```swift
public var redemptionUrl: String?
```

The url that should be used in the promotion campaign restricted to UTF-8 characters with max length 2000.

### `usageCount`

```swift
public var usageCount: Int?
```

Number of times promo code has been used.

### `enabled`

```swift
public var enabled: Bool?
```

Whether the promo code is currently enabled.

### `createdAtForeign`

```swift
public var createdAtForeign: Date?
```

The date and time the promotion was created in ISO 8601 format.

### `updatedAtForeign`

```swift
public var updatedAtForeign: Date?
```

The date and time the promotion was updated in ISO 8601 format.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(_id:code:redemptionUrl:usageCount:enabled:createdAtForeign:updatedAtForeign:links:)`

```swift
public init(_id: String? = nil, code: String? = nil, redemptionUrl: String? = nil, usageCount: Int? = nil, enabled: Bool? = nil, createdAtForeign: Date? = nil, updatedAtForeign: Date? = nil, links: [ResourceLink]? = nil)
```
