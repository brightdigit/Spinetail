**STRUCT**

# `Stats.EcommerceData`

```swift
public struct EcommerceData: Model
```

Ecommerce stats for the list member if the list is attached to a store.

## Properties
### `currencyCode`

```swift
public var currencyCode: String?
```

The three-letter ISO 4217 code for the currency that the store accepts.

### `numberOfOrders`

```swift
public var numberOfOrders: Double?
```

The total number of orders placed by the list member.

### `totalRevenue`

```swift
public var totalRevenue: Double?
```

The total revenue the list member has brought in.

## Methods
### `init(currencyCode:numberOfOrders:totalRevenue:)`

```swift
public init(currencyCode: String? = nil, numberOfOrders: Double? = nil, totalRevenue: Double? = nil)
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
