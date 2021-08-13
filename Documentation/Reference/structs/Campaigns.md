**STRUCT**

# `Campaigns`

```swift
public struct Campaigns: Codable
```

Campaigns and Snippets found for given search term.

## Properties
### `results`

```swift
public var results: [CampaignsResults]?
```

An array of matching campaigns and snippets.

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
### `init(results:totalItems:links:)`

```swift
public init(results: [CampaignsResults]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
