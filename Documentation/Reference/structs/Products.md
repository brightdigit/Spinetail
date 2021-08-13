**STRUCT**

# `Products`

```swift
public struct Products: Codable
```

A collection of a store&#x27;s products.

## Properties
### `storeId`

```swift
public var storeId: String?
```

The store id.

### `products`

```swift
public var products: [EcommerceProduct3]?
```

An array of objects, each representing a store product.

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
### `init(storeId:products:totalItems:links:)`

```swift
public init(storeId: String? = nil, products: [EcommerceProduct3]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
