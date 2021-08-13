**STRUCT**

# `EcommerceProductVariants`

```swift
public struct EcommerceProductVariants: Codable
```

A collection of a product&#x27;s variants.

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

### `variants`

```swift
public var variants: [EcommerceProductVariant6]?
```

An array of objects, each representing a product&#x27;s variants.

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
### `init(storeId:productId:variants:totalItems:links:)`

```swift
public init(storeId: String? = nil, productId: String? = nil, variants: [EcommerceProductVariant6]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
