**STRUCT**

# `CollectionOfMemberActivityEvents`

```swift
public struct CollectionOfMemberActivityEvents: Codable
```

The last 50 Goal events for a member on a specific list.

## Properties
### `goals`

```swift
public var goals: [Goal]?
```

The last 50 Goal events triggered by a member.

### `listId`

```swift
public var listId: String?
```

The list id.

### `emailId`

```swift
public var emailId: String?
```

The MD5 hash of the lowercase version of the list member&#x27;s email address.

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
### `init(goals:listId:emailId:totalItems:links:)`

```swift
public init(goals: [Goal]? = nil, listId: String? = nil, emailId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
