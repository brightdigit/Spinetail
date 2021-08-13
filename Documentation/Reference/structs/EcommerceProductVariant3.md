**STRUCT**

# `EcommerceProductVariant3`

```swift
public struct EcommerceProductVariant3: Codable
```

Information about a specific product variant.

## Properties
### `_id`

```swift
public var _id: String?
```

A unique identifier for the product variant.

### `title`

```swift
public var title: String?
```

The title of a product variant.

### `url`

```swift
public var url: String?
```

The URL for a product variant.

### `sku`

```swift
public var sku: String?
```

The stock keeping unit (SKU) of a product variant.

### `price`

```swift
public var price: Decimal?
```

The price of a product variant.

### `inventoryQuantity`

```swift
public var inventoryQuantity: Int?
```

The inventory quantity of a product variant.

### `imageUrl`

```swift
public var imageUrl: String?
```

The image URL for a product variant.

### `backorders`

```swift
public var backorders: String?
```

The backorders of a product variant.

### `visibility`

```swift
public var visibility: String?
```

The visibility of a product variant.

### `createdAt`

```swift
public var createdAt: Date?
```

The date and time the product was created in ISO 8601 format.

### `updatedAt`

```swift
public var updatedAt: Date?
```

The date and time the product was last updated in ISO 8601 format.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(_id:title:url:sku:price:inventoryQuantity:imageUrl:backorders:visibility:createdAt:updatedAt:links:)`

```swift
public init(_id: String? = nil, title: String? = nil, url: String? = nil, sku: String? = nil, price: Decimal? = nil, inventoryQuantity: Int? = nil, imageUrl: String? = nil, backorders: String? = nil, visibility: String? = nil, createdAt: Date? = nil, updatedAt: Date? = nil, links: [ResourceLink]? = nil)
```
