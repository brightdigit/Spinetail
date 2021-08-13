**STRUCT**

# `Orders`

```swift
public struct Orders: Codable
```

A collection of orders in an account.

## Properties
### `orders`

```swift
public var orders: [EcommerceOrder3]?
```

An array of objects, each representing an order resource.

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
### `init(orders:totalItems:links:)`

```swift
public init(orders: [EcommerceOrder3]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
