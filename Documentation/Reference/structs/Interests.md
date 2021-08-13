**STRUCT**

# `Interests`

```swift
public struct Interests: Codable
```

A list of this category&#x27;s interests

## Properties
### `interests`

```swift
public var interests: [Interest3]?
```

An array of this category&#x27;s interests

### `listId`

```swift
public var listId: String?
```

The unique list id that the interests belong to.

### `categoryId`

```swift
public var categoryId: String?
```

The id for the interest category.

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
### `init(interests:listId:categoryId:totalItems:links:)`

```swift
public init(interests: [Interest3]? = nil, listId: String? = nil, categoryId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
