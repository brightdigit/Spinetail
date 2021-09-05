**STRUCT**

# `LandingPages.Ecommerce`

```swift
public struct Ecommerce: Model
```

A summary of an individual landing page's settings and content.

## Properties
### `averageOrderRevenue`

```swift
public var averageOrderRevenue: Double?
```

The average order revenue of this landing page.

### `currencyCode`

```swift
public var currencyCode: String?
```

The user's currency code.

### `totalOrders`

```swift
public var totalOrders: Int?
```

The total number of orders associated with this landing page.

### `totalRevenue`

```swift
public var totalRevenue: Double?
```

The total revenue of this landing page.

## Methods
### `init(averageOrderRevenue:currencyCode:totalOrders:totalRevenue:)`

```swift
public init(averageOrderRevenue: Double? = nil, currencyCode: String? = nil, totalOrders: Int? = nil, totalRevenue: Double? = nil)
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
