**STRUCT**

# `Body.Variants`

```swift
public struct Variants: Model
```

Information about a specific product variant.

## Properties
### `id`

```swift
public var id: String
```

A unique identifier for the product variant.

### `title`

```swift
public var title: String
```

The title of a product variant.

### `backorders`

```swift
public var backorders: String?
```

The backorders of a product variant.

### `imageURL`

```swift
public var imageURL: String?
```

The image URL for a product variant.

### `inventoryQuantity`

```swift
public var inventoryQuantity: Int?
```

The inventory quantity of a product variant.

### `price`

```swift
public var price: Double?
```

The price of a product variant.

### `sku`

```swift
public var sku: String?
```

The stock keeping unit (SKU) of a product variant.

### `url`

```swift
public var url: String?
```

The URL for a product variant.

### `visibility`

```swift
public var visibility: String?
```

The visibility of a product variant.

## Methods
### `init(id:title:backorders:imageURL:inventoryQuantity:price:sku:url:visibility:)`

```swift
public init(id: String, title: String, backorders: String? = nil, imageURL: String? = nil, inventoryQuantity: Int? = nil, price: Double? = nil, sku: String? = nil, url: String? = nil, visibility: String? = nil)
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
