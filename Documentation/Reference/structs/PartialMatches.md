**STRUCT**

# `PartialMatches`

```swift
public struct PartialMatches: Codable
```

Partial matches of the provided search query.

## Properties
### `members`

```swift
public var members: [ListMembers4]?
```

An array of objects, each representing a specific list member.

### `totalItems`

```swift
public var totalItems: Int?
```

The total number of items matching the query regardless of pagination.

## Methods
### `init(members:totalItems:)`

```swift
public init(members: [ListMembers4]? = nil, totalItems: Int? = nil)
```
