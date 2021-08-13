**STRUCT**

# `TagSearchResults`

```swift
public struct TagSearchResults: Codable
```

A list of tags matching the input query.

## Properties
### `tags`

```swift
public var tags: [TagSearchResultsTags]?
```

A list of matching tags.

### `totalItems`

```swift
public var totalItems: Int?
```

The total number of items matching the query regardless of pagination.

## Methods
### `init(tags:totalItems:)`

```swift
public init(tags: [TagSearchResultsTags]? = nil, totalItems: Int? = nil)
```
