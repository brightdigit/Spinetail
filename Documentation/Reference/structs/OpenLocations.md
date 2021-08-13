**STRUCT**

# `OpenLocations`

```swift
public struct OpenLocations: Codable
```

Top open locations for a specific campaign.

## Properties
### `locations`

```swift
public var locations: [OpenLocationsLocations]?
```

An array of objects, each representing a top location for opens.

### `campaignId`

```swift
public var campaignId: String?
```

The campaign id.

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
### `init(locations:campaignId:totalItems:links:)`

```swift
public init(locations: [OpenLocationsLocations]? = nil, campaignId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
