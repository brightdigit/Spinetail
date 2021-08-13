**STRUCT**

# `CollectionOfSegments`

```swift
public struct CollectionOfSegments: Codable
```

A list of available segments.

## Properties
### `segments`

```swift
public var segments: [List6]?
```

An array of objects, each representing a list segment.

### `listId`

```swift
public var listId: String?
```

The list id.

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
### `init(segments:listId:totalItems:links:)`

```swift
public init(segments: [List6]? = nil, listId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
