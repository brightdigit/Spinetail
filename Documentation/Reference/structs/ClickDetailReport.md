**STRUCT**

# `ClickDetailReport`

```swift
public struct ClickDetailReport: Codable
```

A list of URLs and unique IDs included in HTML and plain-text versions of a campaign.

## Properties
### `urlsClicked`

```swift
public var urlsClicked: [ClickDetailReport2]?
```

An array of objects, each representing a specific URL contained in the campaign.

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
### `init(urlsClicked:campaignId:totalItems:links:)`

```swift
public init(urlsClicked: [ClickDetailReport2]? = nil, campaignId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
