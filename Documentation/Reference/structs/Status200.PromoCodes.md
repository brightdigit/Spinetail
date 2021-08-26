**STRUCT**

# `Status200.PromoCodes`

```swift
public struct PromoCodes: Model
```

Information about an Ecommerce Store's specific Promo Code

## Properties
### `links`

```swift
public var links: [Links]?
```

A list of link types and descriptions for the API schema documents.

### `code`

```swift
public var code: String?
```

The discount code. Restricted to UTF-8 characters with max length 50.

### `createdAtForeign`

```swift
public var createdAtForeign: DateTime
```

The date and time the promotion was created in ISO 8601 format.

### `enabled`

```swift
public var enabled: Bool?
```

Whether the promo code is currently enabled.

### `id`

```swift
public var id: String?
```

A unique identifier for the promo Code.

### `redemptionURL`

```swift
public var redemptionURL: String?
```

The url that should be used in the promotion campaign restricted to UTF-8 characters with max length 2000.

### `updatedAtForeign`

```swift
public var updatedAtForeign: DateTime
```

The date and time the promotion was updated in ISO 8601 format.

### `usageCount`

```swift
public var usageCount: Int?
```

Number of times promo code has been used.

## Methods
### `init(links:code:createdAtForeign:enabled:id:redemptionURL:updatedAtForeign:usageCount:)`

```swift
public init(links: [Links]? = nil, code: String? = nil, createdAtForeign: Date? = nil, enabled: Bool? = nil, id: String? = nil, redemptionURL: String? = nil, updatedAtForeign: Date? = nil, usageCount: Int? = nil)
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
