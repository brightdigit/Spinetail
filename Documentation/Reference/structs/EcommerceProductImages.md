**STRUCT**

# `EcommerceProductImages`

```swift
public struct EcommerceProductImages: Codable
```

A collection of a product&#x27;s images.

## Properties
### `storeId`

```swift
public var storeId: String?
```

The store id.

### `productId`

```swift
public var productId: String?
```

The product id.

### `images`

```swift
public var images: [EcommerceProductImage5]?
```

An array of objects, each representing a product image resource.

### `totalItems`

```swift
public var totalItems: Int?
```

The total number of items matching the query regardless of pagination.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(storeId:productId:images:totalItems:links:)`

```swift
public init(storeId: String? = nil, productId: String? = nil, images: [EcommerceProductImage5]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
