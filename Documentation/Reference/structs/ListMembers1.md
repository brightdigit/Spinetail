**STRUCT**

# `ListMembers1`

```swift
public struct ListMembers1: Codable
```

Manage members of a specific Mailchimp list, including currently subscribed, unsubscribed, and bounced members.

## Properties
### `members`

```swift
public var members: [ListMembers4]?
```

An array of objects, each representing a specific list member.

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
### `init(members:listId:totalItems:links:)`

```swift
public init(members: [ListMembers4]? = nil, listId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
