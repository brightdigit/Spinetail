**STRUCT**

# `LandingPageReportEcommerce`

```swift
public struct LandingPageReportEcommerce: Codable
```

## Properties
### `totalRevenue`

```swift
public var totalRevenue: Decimal?
```

The total revenue of this landing page.

### `currencyCode`

```swift
public var currencyCode: String?
```

The user&#x27;s currency code.

### `totalOrders`

```swift
public var totalOrders: Int?
```

The total number of orders associated with this landing page.

### `averageOrderRevenue`

```swift
public var averageOrderRevenue: Decimal?
```

The average order revenue of this landing page.

## Methods
### `init(totalRevenue:currencyCode:totalOrders:averageOrderRevenue:)`

```swift
public init(totalRevenue: Decimal? = nil, currencyCode: String? = nil, totalOrders: Int? = nil, averageOrderRevenue: Decimal? = nil)
```
