**STRUCT**

# `InlineResponse20012`

```swift
public struct InlineResponse20012: Codable
```

A collection of landing pages.

## Properties
### `landingPages`

```swift
public var landingPages: [LandingPageReport1]?
```

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
### `init(landingPages:totalItems:links:)`

```swift
public init(landingPages: [LandingPageReport1]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
