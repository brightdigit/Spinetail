**STRUCT**

# `ListWebhooks`

```swift
public struct ListWebhooks: Codable
```

Manage webhooks for a specific list.

## Properties
### `webhooks`

```swift
public var webhooks: [ListWebhooks2]?
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
### `init(webhooks:listId:totalItems:links:)`

```swift
public init(webhooks: [ListWebhooks2]? = nil, listId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
