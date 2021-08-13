**STRUCT**

# `EcommerceProduct3`

```swift
public struct EcommerceProduct3: Codable
```

Information about a specific product.

## Properties
### `_id`

```swift
public var _id: String?
```

A unique identifier for the product.

### `currencyCode`

```swift
public var currencyCode: String?
```

The currency code

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
public var variants: [EcommerceProductVariant6]?
```

Returns up to 50 of the product&#x27;s variants. To retrieve all variants use [Product Variants](https://mailchimp.com/developer/marketing/api/ecommerce-product-variants/).

### `images`

```swift
public var images: [EcommerceProductImage5]?
```

An array of the product&#x27;s images.

### `publishedAtForeign`

```swift
public var publishedAtForeign: Date?
```

The date and time the product was published in ISO 8601 format.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(_id:currencyCode:title:handle:url:_description:type:vendor:imageUrl:variants:images:publishedAtForeign:links:)`

```swift
public init(_id: String? = nil, currencyCode: String? = nil, title: String? = nil, handle: String? = nil, url: String? = nil, _description: String? = nil, type: String? = nil, vendor: String? = nil, imageUrl: String? = nil, variants: [EcommerceProductVariant6]? = nil, images: [EcommerceProductImage5]? = nil, publishedAtForeign: Date? = nil, links: [ResourceLink]? = nil)
```
