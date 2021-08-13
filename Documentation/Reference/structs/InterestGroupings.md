**STRUCT**

# `InterestGroupings`

```swift
public struct InterestGroupings: Codable
```

Information about this list&#x27;s interest categories.

## Properties
### `listId`

```swift
public var listId: String?
```

The ID for the list that this category belongs to.

### `categories`

```swift
public var categories: [InterestCategory3]?
```

This array contains individual interest categories.

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
### `init(listId:categories:totalItems:links:)`

```swift
public init(listId: String? = nil, categories: [InterestCategory3]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
