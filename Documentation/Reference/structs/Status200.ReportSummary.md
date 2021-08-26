**STRUCT**

# `Status200.ReportSummary`

```swift
public struct ReportSummary: Model
```

Report summary of facebook ad

## Properties
### `averageDailyBudget`

```swift
public var averageDailyBudget: AverageDailyBudget?
```

### `averageOrderAmount`

```swift
public var averageOrderAmount: AverageOrderAmount?
```

### `clickRate`

```swift
public var clickRate: Double?
```

### `clicks`

```swift
public var clicks: Int?
```

### `comments`

```swift
public var comments: Int?
```

### `costPerClick`

```swift
public var costPerClick: CostPerClick?
```

### `ecommerce`

```swift
public var ecommerce: Ecommerce?
```

### `extendedAt`

```swift
public var extendedAt: ExtendedAt?
```

### `firstTimeBuyers`

```swift
public var firstTimeBuyers: Int?
```

### `hasExtendedAdDuration`

```swift
public var hasExtendedAdDuration: Bool?
```

### `impressions`

```swift
public var impressions: Int?
```

### `likes`

```swift
public var likes: Int?
```

### `reach`

```swift
public var reach: Int?
```

### `returnOnInvestment`

```swift
public var returnOnInvestment: Double?
```

### `shares`

```swift
public var shares: Int?
```

### `totalOrders`

```swift
public var totalOrders: Int?
```

### `totalProductsSold`

```swift
public var totalProductsSold: Int?
```

### `uniqueClicks`

```swift
public var uniqueClicks: Int?
```

## Methods
### `init(averageDailyBudget:averageOrderAmount:clickRate:clicks:comments:costPerClick:ecommerce:extendedAt:firstTimeBuyers:hasExtendedAdDuration:impressions:likes:reach:returnOnInvestment:shares:totalOrders:totalProductsSold:uniqueClicks:)`

```swift
public init(averageDailyBudget: AverageDailyBudget? = nil, averageOrderAmount: AverageOrderAmount? = nil, clickRate: Double? = nil, clicks: Int? = nil, comments: Int? = nil, costPerClick: CostPerClick? = nil, ecommerce: Ecommerce? = nil, extendedAt: ExtendedAt? = nil, firstTimeBuyers: Int? = nil, hasExtendedAdDuration: Bool? = nil, impressions: Int? = nil, likes: Int? = nil, reach: Int? = nil, returnOnInvestment: Double? = nil, shares: Int? = nil, totalOrders: Int? = nil, totalProductsSold: Int? = nil, uniqueClicks: Int? = nil)
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
