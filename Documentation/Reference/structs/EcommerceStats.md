**STRUCT**

# `EcommerceStats`

```swift
public struct EcommerceStats: Codable
```

Ecommerce stats for the list member if the list is attached to a store.

## Properties
### `totalRevenue`

```swift
public var totalRevenue: Decimal?
```

The total revenue the list member has brought in.

### `numberOfOrders`

```swift
public var numberOfOrders: Decimal?
```

The total number of orders placed by the list member.

### `currencyCode`

```swift
public var currencyCode: String?
```

The three-letter ISO 4217 code for the currency that the store accepts.

## Methods
### `init(totalRevenue:numberOfOrders:currencyCode:)`

```swift
public init(totalRevenue: Decimal? = nil, numberOfOrders: Decimal? = nil, currencyCode: String? = nil)
```
