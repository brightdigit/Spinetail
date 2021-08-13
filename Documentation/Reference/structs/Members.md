**STRUCT**

# `Members`

```swift
public struct Members: Codable
```

Members found for given search term

## Properties
### `exactMatches`

```swift
public var exactMatches: ExactMatches?
```

### `fullSearch`

```swift
public var fullSearch: PartialMatches?
```

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(exactMatches:fullSearch:links:)`

```swift
public init(exactMatches: ExactMatches? = nil, fullSearch: PartialMatches? = nil, links: [ResourceLink]? = nil)
```
