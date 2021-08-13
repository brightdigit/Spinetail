**STRUCT**

# `BatchOperations`

```swift
public struct BatchOperations: Codable
```

A summary of batch requests that have been made.

## Properties
### `batches`

```swift
public var batches: [Batch1]?
```

An array of objects representing batch calls.

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
### `init(batches:totalItems:links:)`

```swift
public init(batches: [Batch1]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
