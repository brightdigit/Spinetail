**STRUCT**

# `BatchUpdateListMembers`

```swift
public struct BatchUpdateListMembers: Codable
```

Batch update list members.

## Properties
### `newMembers`

```swift
public var newMembers: [ListMembers5]?
```

An array of objects, each representing a new member that was added to the list.

### `updatedMembers`

```swift
public var updatedMembers: [ListMembers5]?
```

An array of objects, each representing an existing list member whose subscription status was updated.

### `errors`

```swift
public var errors: [BatchUpdateListMembersErrors]?
```

An array of objects, each representing an email address that could not be added to the list or updated and an error message providing more details.

### `totalCreated`

```swift
public var totalCreated: Int?
```

The total number of items matching the query, irrespective of pagination.

### `totalUpdated`

```swift
public var totalUpdated: Int?
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
### `init(newMembers:updatedMembers:errors:totalCreated:totalUpdated:errorCount:links:)`

```swift
public init(newMembers: [ListMembers5]? = nil, updatedMembers: [ListMembers5]? = nil, errors: [BatchUpdateListMembersErrors]? = nil, totalCreated: Int? = nil, totalUpdated: Int? = nil, errorCount: Int? = nil, links: [ResourceLink]? = nil)
```
