**STRUCT**

# `CollectionOfMergeFields`

```swift
public struct CollectionOfMergeFields: Codable
```

The merge fields ([audience fields](https://mailchimp.com/help/getting-started-with-merge-tags/)) for an audience.

## Properties
### `mergeFields`

```swift
public var mergeFields: [MergeField3]?
```

An array of objects, each representing a merge field resource.

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
### `init(mergeFields:listId:totalItems:links:)`

```swift
public init(mergeFields: [MergeField3]? = nil, listId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
