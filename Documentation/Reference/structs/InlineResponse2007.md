**STRUCT**

# `InlineResponse2007`

```swift
public struct InlineResponse2007: Codable
```

A collection of ecommerce products.

## Properties
### `products`

```swift
public var products: [InlineResponse2007Products]?
```

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
### `init(products:totalItems:links:)`

```swift
public init(products: [InlineResponse2007Products]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
