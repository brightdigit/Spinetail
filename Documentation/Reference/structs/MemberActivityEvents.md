**STRUCT**

# `MemberActivityEvents`

```swift
public struct MemberActivityEvents: Codable
```

The last 50 member events for a list.

## Properties
### `activity`

```swift
public var activity: [MemberActivity2]?
```

An array of objects, each representing a member event.

### `emailId`

```swift
public var emailId: String?
```

The MD5 hash of the lowercase version of the list member&#x27;s email address.

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
### `init(activity:emailId:listId:totalItems:links:)`

```swift
public init(activity: [MemberActivity2]? = nil, emailId: String? = nil, listId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
