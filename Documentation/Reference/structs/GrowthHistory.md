**STRUCT**

# `GrowthHistory`

```swift
public struct GrowthHistory: Codable
```

A month-by-month summary of a specific list&#x27;s growth activity.

## Properties
### `history`

```swift
public var history: [GrowthHistory2]?
```

An array of objects, each representing a monthly growth report for a list.

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
### `init(history:listId:totalItems:links:)`

```swift
public init(history: [GrowthHistory2]? = nil, listId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
