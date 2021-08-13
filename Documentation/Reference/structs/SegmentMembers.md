**STRUCT**

# `SegmentMembers`

```swift
public struct SegmentMembers: Codable
```

View members in a specific list segment.

## Properties
### `members`

```swift
public var members: [ListMembers3]?
```

An array of objects, each representing a specific list member.

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
### `init(members:totalItems:links:)`

```swift
public init(members: [ListMembers3]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
