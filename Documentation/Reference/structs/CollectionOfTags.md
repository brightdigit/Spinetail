**STRUCT**

# `CollectionOfTags`

```swift
public struct CollectionOfTags: Codable
```

A list of tags assigned to a list member.

## Properties
### `tags`

```swift
public var tags: [CollectionOfTagsTags]?
```

A list of tags assigned to the list member.

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
### `init(tags:totalItems:links:)`

```swift
public init(tags: [CollectionOfTagsTags]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
