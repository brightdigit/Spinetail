**STRUCT**

# `InlineResponse2006`

```swift
public struct InlineResponse2006: Codable
```

A collection of landing pages.

## Properties
### `landingPages`

```swift
public var landingPages: [LandingPage3]?
```

The landing pages on the account

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
public init(landingPages: [LandingPage3]? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
