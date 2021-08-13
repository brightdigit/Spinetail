**STRUCT**

# `CampaignAdviceReport`

```swift
public struct CampaignAdviceReport: Codable
```

A list of feedback based on a campaign&#x27;s statistics.

## Properties
### `advice`

```swift
public var advice: [CampaignAdvice]?
```

An array of objects, each representing a point of campaign feedback.

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
### `init(advice:campaignId:totalItems:links:)`

```swift
public init(advice: [CampaignAdvice]? = nil, campaignId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
