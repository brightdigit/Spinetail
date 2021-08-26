**STRUCT**

# `Status200.PromoRules`

```swift
public struct PromoRules: Model
```

Information about an Ecommerce Store's specific Promo Rule

## Properties
### `links`

```swift
public var links: [Links]?
```

A list of link types and descriptions for the API schema documents.

### `amount`

```swift
public var amount: Float?
```

The amount of the promo code discount. If 'type' is 'fixed', the amount is treated as a monetary value. If 'type' is 'percentage', amount must be a decimal value between 0.0 and 1.0, inclusive.

### `createdAtForeign`

```swift
public var createdAtForeign: DateTime
```

The date and time the promotion was created in ISO 8601 format.

### `description`

```swift
public var description: String?
```

The description of a promotion restricted to UTF-8 characters with max length 255.

### `enabled`

```swift
public var enabled: Bool?
```

Whether the promo rule is currently enabled.

### `endsAt`

```swift
public var endsAt: String?
```

The date and time when the promotion ends. Must be after starts_at and in ISO 8601 format.

### `id`

```swift
public var id: String?
```

A unique identifier for the promo rule. If Ecommerce platform does not support promo rule, use promo code id as promo rule id. Restricted to UTF-8 characters with max length 50.

### `startsAt`

```swift
public var startsAt: DateTime
```

The date and time when the promotion is in effect in ISO 8601 format.

### `target`

```swift
public var target: Target?
```

The target that the discount applies to.

### `title`

```swift
public var title: String?
```

The title that will show up in promotion campaign. Restricted to UTF-8 characters with max length of 100 bytes.

### `type`

```swift
public var type: `Type`?
```

Type of discount. For free shipping set type to fixed.

### `updatedAtForeign`

```swift
public var updatedAtForeign: DateTime
```

The date and time the promotion was updated in ISO 8601 format.

## Methods
### `init(links:amount:createdAtForeign:description:enabled:endsAt:id:startsAt:target:title:type:updatedAtForeign:)`

```swift
public init(links: [Links]? = nil, amount: Float? = nil, createdAtForeign: Date? = nil, description: String? = nil, enabled: Bool? = nil, endsAt: String? = nil, id: String? = nil, startsAt: Date? = nil, target: Target? = nil, title: String? = nil, type: Type? = nil, updatedAtForeign: Date? = nil)
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
