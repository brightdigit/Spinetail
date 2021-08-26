**STRUCT**

# `Reports.Ecommerce`

```swift
public struct Ecommerce: Model
```

E-Commerce stats for a campaign.

## Properties
### `currencyCode`

```swift
public var currencyCode: String?
```

### `totalOrders`

```swift
public var totalOrders: Int?
```

The total orders for a campaign.

### `totalRevenue`

```swift
public var totalRevenue: Double?
```

The total revenue for a campaign. Calculated as the sum of all order totals minus shipping and tax totals.

### `totalSpent`

```swift
public var totalSpent: Double?
```

The total spent for a campaign. Calculated as the sum of all order totals with no deductions.

## Methods
### `init(currencyCode:totalOrders:totalRevenue:totalSpent:)`

```swift
public init(currencyCode: String? = nil, totalOrders: Int? = nil, totalRevenue: Double? = nil, totalSpent: Double? = nil)
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
