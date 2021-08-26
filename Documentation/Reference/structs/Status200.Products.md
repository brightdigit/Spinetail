**STRUCT**

# `Status200.Products`

```swift
public struct Products: Model
```

A collection of ecommerce products.

## Properties
### `currencyCode`

```swift
public var currencyCode: String?
```

### `imageURL`

```swift
public var imageURL: String?
```

### `recommendationPurchased`

```swift
public var recommendationPurchased: Int?
```

### `recommendationTotal`

```swift
public var recommendationTotal: Int?
```

### `sku`

```swift
public var sku: String?
```

### `title`

```swift
public var title: String?
```

### `totalPurchased`

```swift
public var totalPurchased: Double?
```

### `totalRevenue`

```swift
public var totalRevenue: Double?
```

## Methods
### `init(currencyCode:imageURL:recommendationPurchased:recommendationTotal:sku:title:totalPurchased:totalRevenue:)`

```swift
public init(currencyCode: String? = nil, imageURL: String? = nil, recommendationPurchased: Int? = nil, recommendationTotal: Int? = nil, sku: String? = nil, title: String? = nil, totalPurchased: Double? = nil, totalRevenue: Double? = nil)
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
