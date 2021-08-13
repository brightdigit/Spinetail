**STRUCT**

# `EcommerceProduct2`

```swift
public struct EcommerceProduct2: Codable
```

Information about a specific product.

## Properties
### `title`

```swift
public var title: String?
```

The title of a product.

### `handle`

```swift
public var handle: String?
```

The handle of a product.

### `url`

```swift
public var url: String?
```

The URL for a product.

### `_description`

```swift
public var _description: String?
```

The description of a product.

### `type`

```swift
public var type: String?
```

The type of product.

### `vendor`

```swift
public var vendor: String?
```

The vendor for a product.

### `imageUrl`

```swift
public var imageUrl: String?
```

The image URL for a product.

### `variants`

```swift
public var variants: [EcommerceProductVariant1]?
```

An array of the product&#x27;s variants. At least one variant is required for each product. A variant can use the same &#x60;id&#x60; and &#x60;title&#x60; as the parent product.

### `images`

```swift
public var images: [EcommerceProductImage1]?
```

An array of the product&#x27;s images.

### `publishedAtForeign`

```swift
public var publishedAtForeign: Date?
```

The date and time the product was published in ISO 8601 format.

## Methods
### `init(title:handle:url:_description:type:vendor:imageUrl:variants:images:publishedAtForeign:)`

```swift
public init(title: String? = nil, handle: String? = nil, url: String? = nil, _description: String? = nil, type: String? = nil, vendor: String? = nil, imageUrl: String? = nil, variants: [EcommerceProductVariant1]? = nil, images: [EcommerceProductImage1]? = nil, publishedAtForeign: Date? = nil)
```
