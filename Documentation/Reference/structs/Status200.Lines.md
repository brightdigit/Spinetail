**STRUCT**

# `Status200.Lines`

```swift
public struct Lines: Model
```

Information about a specific order line.

## Properties
### `links`

```swift
public var links: [Links]?
```

A list of link types and descriptions for the API schema documents.

### `discount`

```swift
public var discount: Double?
```

The total discount amount applied to a line item.

### `id`

```swift
public var id: String?
```

A unique identifier for an order line item.

### `imageURL`

```swift
public var imageURL: String?
```

The image URL for a product.

### `price`

```swift
public var price: Double?
```

The order line item price.

### `productId`

```swift
public var productId: String?
```

A unique identifier for the product associated with an order line item.

### `productTitle`

```swift
public var productTitle: String?
```

The name of the product for an order line item.

### `productVariantId`

```swift
public var productVariantId: String?
```

A unique identifier for the product variant associated with an order line item.

### `productVariantTitle`

```swift
public var productVariantTitle: String?
```

The name of the product variant for an order line item.

### `quantity`

```swift
public var quantity: Int?
```

The order line item quantity.

## Methods
### `init(links:discount:id:imageURL:price:productId:productTitle:productVariantId:productVariantTitle:quantity:)`

```swift
public init(links: [Links]? = nil, discount: Double? = nil, id: String? = nil, imageURL: String? = nil, price: Double? = nil, productId: String? = nil, productTitle: String? = nil, productVariantId: String? = nil, productVariantTitle: String? = nil, quantity: Int? = nil)
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
