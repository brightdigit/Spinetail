**STRUCT**

# `EcommercestoresstoreIdordersPromos`

```swift
public struct EcommercestoresstoreIdordersPromos: Codable
```

## Properties
### `code`

```swift
public var code: String
```

The Promo Code

### `amountDiscounted`

```swift
public var amountDiscounted: Decimal
```

The amount of discount applied on the total price. For example if the total cost was $100 and the customer paid $95.5, amount_discounted will be 4.5 For free shipping set amount_discounted to 0

### `type`

```swift
public var type: ModelType
```

Type of discount. For free shipping set type to fixed

## Methods
### `init(code:amountDiscounted:type:)`

```swift
public init(code: String, amountDiscounted: Decimal, type: ModelType)
```
