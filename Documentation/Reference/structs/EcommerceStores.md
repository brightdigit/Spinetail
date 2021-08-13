**STRUCT**

# `EcommerceStores`

```swift
public struct EcommerceStores: Codable
```

A collection of stores in the account.

## Properties
### `stores`

```swift
public var stores: [EcommerceStore3]?
```

An array of objects, each representing a store.

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
### `init(stores:totalItems:links:)`

```swift
public init(stores: [EcommerceStore3]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
