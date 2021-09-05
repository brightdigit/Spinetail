**STRUCT**

# `Body.Lines`

```swift
public struct Lines: Model
```

Information about a specific order line.

## Properties
### `id`

```swift
public var id: String
```

A unique identifier for the order line item.

### `price`

```swift
public var price: Double
```

The price of an order line item.

### `productId`

```swift
public var productId: String
```

A unique identifier for the product associated with the order line item.

### `productVariantId`

```swift
public var productVariantId: String
```

A unique identifier for the product variant associated with the order line item.

### `quantity`

```swift
public var quantity: Int
```

The quantity of an order line item.

### `discount`

```swift
public var discount: Double?
```

The total discount amount applied to this line item.

## Methods
### `init(id:price:productId:productVariantId:quantity:discount:)`

```swift
public init(id: String, price: Double, productId: String, productVariantId: String, quantity: Int, discount: Double? = nil)
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
