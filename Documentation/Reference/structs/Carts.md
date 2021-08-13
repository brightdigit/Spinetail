**STRUCT**

# `Carts`

```swift
public struct Carts: Codable
```

A collection of a store&#x27;s carts.

## Properties
### `storeId`

```swift
public var storeId: String?
```

The store id.

### `carts`

```swift
public var carts: [EcommerceCart3]?
```

An array of objects, each representing a cart.

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
### `init(storeId:carts:totalItems:links:)`

```swift
public init(storeId: String? = nil, carts: [EcommerceCart3]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
