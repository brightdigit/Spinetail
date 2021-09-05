**STRUCT**

# `Body.Promos`

```swift
public struct Promos: Model
```

Information about a specific order.

## Properties
### `amountDiscounted`

```swift
public var amountDiscounted: Double
```

The amount of discount applied on the total price. For example if the total cost was $100 and the customer paid $95.5, amount_discounted will be 4.5 For free shipping set amount_discounted to 0

### `code`

```swift
public var code: String
```

The Promo Code

### `type`

```swift
public var type: `Type`
```

Type of discount. For free shipping set type to fixed

## Methods
### `init(amountDiscounted:code:type:)`

```swift
public init(amountDiscounted: Double, code: String, type: Type)
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
