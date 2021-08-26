**STRUCT**

# `Products.Variants`

```swift
public struct Variants: Model
```

Information about a specific product variant.

## Properties
### `links`

```swift
public var links: [Links]?
```

A list of link types and descriptions for the API schema documents.

### `backorders`

```swift
public var backorders: String?
```

The backorders of a product variant.

### `createdAt`

```swift
public var createdAt: DateTime
```

The date and time the product was created in ISO 8601 format.

### `id`

```swift
public var id: String?
```

A unique identifier for the product variant.

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

### `title`

```swift
public var title: String?
```

The title of a product variant.

### `updatedAt`

```swift
public var updatedAt: DateTime
```

The date and time the product was last updated in ISO 8601 format.

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
### `init(links:backorders:createdAt:id:imageURL:inventoryQuantity:price:sku:title:updatedAt:url:visibility:)`

```swift
public init(links: [Links]? = nil, backorders: String? = nil, createdAt: Date? = nil, id: String? = nil, imageURL: String? = nil, inventoryQuantity: Int? = nil, price: Double? = nil, sku: String? = nil, title: String? = nil, updatedAt: Date? = nil, url: String? = nil, visibility: String? = nil)
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
