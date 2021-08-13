**STRUCT**

# `CampaignReports`

```swift
public struct CampaignReports: Codable
```

A summary of the comment feedback for a specific campaign.

## Properties
### `feedback`

```swift
public var feedback: [CampaignFeedback3]?
```

A collection of feedback items for a campaign.

### `campaignId`

```swift
public var campaignId: String?
```

The unique id for the campaign.

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
### `init(feedback:campaignId:totalItems:links:)`

```swift
public init(feedback: [CampaignFeedback3]? = nil, campaignId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
