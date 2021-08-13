**STRUCT**

# `BatchAddremoveListMembersTofromStaticSegment`

```swift
public struct BatchAddremoveListMembersTofromStaticSegment: Codable
```

Batch add/remove List members to/from static segment

## Properties
### `membersAdded`

```swift
public var membersAdded: [ListMembers5]?
```

An array of objects, each representing a new member that was added to the static segment.

### `membersRemoved`

```swift
public var membersRemoved: [ListMembers5]?
```

An array of objects, each representing an existing list member that got deleted from the static segment.

### `errors`

```swift
public var errors: [BatchAddremoveListMembersTofromStaticSegmentErrors]?
```

An array of objects, each representing an array of email addresses that could not be added to the segment or removed and an error message providing more details.

### `totalAdded`

```swift
public var totalAdded: Int?
```

The total number of items matching the query, irrespective of pagination.

### `totalRemoved`

```swift
public var totalRemoved: Int?
```

The total number of items matching the query, irrespective of pagination.

### `errorCount`

```swift
public var errorCount: Int?
```

The total number of items matching the query, irrespective of pagination.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(membersAdded:membersRemoved:errors:totalAdded:totalRemoved:errorCount:links:)`

```swift
public init(membersAdded: [ListMembers5]? = nil, membersRemoved: [ListMembers5]? = nil, errors: [BatchAddremoveListMembersTofromStaticSegmentErrors]? = nil, totalAdded: Int? = nil, totalRemoved: Int? = nil, errorCount: Int? = nil, links: [ResourceLink]? = nil)
```
