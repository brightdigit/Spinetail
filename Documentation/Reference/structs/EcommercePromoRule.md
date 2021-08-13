**STRUCT**

# `EcommercePromoRule`

```swift
public struct EcommercePromoRule: Codable
```

Information about an Ecommerce Store&#x27;s specific Promo Rule.

## Properties
### `_id`

```swift
public var _id: String
```

A unique identifier for the promo rule. If Ecommerce platform does not support promo rule, use promo code id as promo rule id. Restricted to UTF-8 characters with max length 50.

### `title`

```swift
public var title: String?
```

The title that will show up in promotion campaign. Restricted to UTF-8 characters with max length of 100 bytes.

### `_description`

```swift
public var _description: String
```

The description of a promotion restricted to UTF-8 characters with max length 255.

### `startsAt`

```swift
public var startsAt: Date?
```

The date and time when the promotion is in effect in ISO 8601 format.

### `endsAt`

```swift
public var endsAt: String?
```

The date and time when the promotion ends. Must be after starts_at and in ISO 8601 format.

### `amount`

```swift
public var amount: Float
```

The amount of the promo code discount. If &#x27;type&#x27; is &#x27;fixed&#x27;, the amount is treated as a monetary value. If &#x27;type&#x27; is &#x27;percentage&#x27;, amount must be a decimal value between 0.0 and 1.0, inclusive.

### `type`

```swift
public var type: ModelType
```

Type of discount. For free shipping set type to fixed.

### `target`

```swift
public var target: Target
```

The target that the discount applies to.

### `enabled`

```swift
public var enabled: Bool?
```

Whether the promo rule is currently enabled.

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

## Methods
### `init(_id:title:_description:startsAt:endsAt:amount:type:target:enabled:createdAtForeign:updatedAtForeign:)`

```swift
public init(_id: String, title: String? = nil, _description: String, startsAt: Date? = nil, endsAt: String? = nil, amount: Float, type: ModelType, target: Target, enabled: Bool? = nil, createdAtForeign: Date? = nil, updatedAtForeign: Date? = nil)
```
