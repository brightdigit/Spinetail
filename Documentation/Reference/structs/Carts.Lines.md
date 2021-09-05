**STRUCT**

# `Carts.Lines`

```swift
public struct Lines: Model
```

Information about a specific cart line item.

## Properties
### `links`

```swift
public var links: [Links]?
```

A list of link types and descriptions for the API schema documents.

### `id`

```swift
public var id: String?
```

A unique identifier for the cart line item.

### `price`

```swift
public var price: Double?
```

The price of a cart line item.

### `productId`

```swift
public var productId: String?
```

A unique identifier for the product associated with the cart line item.

### `productTitle`

```swift
public var productTitle: String?
```

The name of the product for the cart line item.

### `productVariantId`

```swift
public var productVariantId: String?
```

A unique identifier for the product variant associated with the cart line item.

### `productVariantTitle`

```swift
public var productVariantTitle: String?
```

The name of the product variant for the cart line item.

### `quantity`

```swift
public var quantity: Int?
```

The quantity of a cart line item.

## Methods
### `init(links:id:price:productId:productTitle:productVariantId:productVariantTitle:quantity:)`

```swift
public init(links: [Links]? = nil, id: String? = nil, price: Double? = nil, productId: String? = nil, productTitle: String? = nil, productVariantId: String? = nil, productVariantTitle: String? = nil, quantity: Int? = nil)
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
