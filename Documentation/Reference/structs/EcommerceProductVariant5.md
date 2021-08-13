**STRUCT**

# `EcommerceProductVariant5`

```swift
public struct EcommerceProductVariant5: Codable
```

Information about a specific product variant.

## Properties
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

## Methods
### `init(title:url:sku:price:inventoryQuantity:imageUrl:backorders:visibility:)`

```swift
public init(title: String? = nil, url: String? = nil, sku: String? = nil, price: Decimal? = nil, inventoryQuantity: Int? = nil, imageUrl: String? = nil, backorders: String? = nil, visibility: String? = nil)
```
