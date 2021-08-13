**STRUCT**

# `InlineResponse2005`

```swift
public struct InlineResponse2005: Codable
```

An array of campaigns.

## Properties
### `campaigns`

```swift
public var campaigns: [Campaign4]?
```

An array of campaigns.

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
### `init(campaigns:totalItems:links:)`

```swift
public init(campaigns: [Campaign4]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
