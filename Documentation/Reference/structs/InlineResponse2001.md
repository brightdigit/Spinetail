**STRUCT**

# `InlineResponse2001`

```swift
public struct InlineResponse2001: Codable
```

An array of objects, each representing an authorized application.

## Properties
### `apps`

```swift
public var apps: [InlineResponse2001Apps]?
```

An array of objects, each representing an authorized application.

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
### `init(apps:totalItems:links:)`

```swift
public init(apps: [InlineResponse2001Apps]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
