**STRUCT**

# `CampaignSubReports`

```swift
public struct CampaignSubReports: Codable
```

A list of reports containing child campaigns for a specific campaign.

## Properties
### `reports`

```swift
public var reports: [CampaignReport1]?
```

An array of objects, each representing a report resource.

### `campaignId`

```swift
public var campaignId: String?
```

Unique identifier of the parent campaign

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
### `init(reports:campaignId:totalItems:links:)`

```swift
public init(reports: [CampaignReport1]? = nil, campaignId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
