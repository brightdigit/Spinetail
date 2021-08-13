**STRUCT**

# `ListLocations`

```swift
public struct ListLocations: Codable
```

A summary of List&#x27;s locations.

## Properties
### `locations`

```swift
public var locations: [ListLocation]?
```

An array of objects, each representing a list&#x27;s top subscriber locations.

### `listId`

```swift
public var listId: String?
```

The unique id for the list.

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
### `init(locations:listId:totalItems:links:)`

```swift
public init(locations: [ListLocation]? = nil, listId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
