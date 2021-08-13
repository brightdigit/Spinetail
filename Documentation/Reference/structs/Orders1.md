**STRUCT**

# `Orders1`

```swift
public struct Orders1: Codable
```

A collection of orders in a store.

## Properties
### `storeId`

```swift
public var storeId: String?
```

The unique identifier for the store.

### `orders`

```swift
public var orders: [EcommerceOrder3]?
```

An array of objects, each representing an order in a store.

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
### `init(storeId:orders:totalItems:links:)`

```swift
public init(storeId: String? = nil, orders: [EcommerceOrder3]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
