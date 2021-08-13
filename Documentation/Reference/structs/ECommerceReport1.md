**STRUCT**

# `ECommerceReport1`

```swift
public struct ECommerceReport1: Codable
```

E-Commerce stats for a campaign.

## Properties
### `totalOrders`

```swift
public var totalOrders: Int?
```

The total orders for a campaign.

### `totalSpent`

```swift
public var totalSpent: Decimal?
```

The total spent for a campaign. Calculated as the sum of all order totals with no deductions.

### `totalRevenue`

```swift
public var totalRevenue: Decimal?
```

The total revenue for a campaign. Calculated as the sum of all order totals minus shipping and tax totals.

## Methods
### `init(totalOrders:totalSpent:totalRevenue:)`

```swift
public init(totalOrders: Int? = nil, totalSpent: Decimal? = nil, totalRevenue: Decimal? = nil)
```
