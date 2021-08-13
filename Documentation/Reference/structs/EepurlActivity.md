**STRUCT**

# `EepurlActivity`

```swift
public struct EepurlActivity: Codable
```

A summary of social activity for the campaign, tracked by EepURL.

## Properties
### `twitter`

```swift
public var twitter: TwitterStats?
```

### `clicks`

```swift
public var clicks: ClickSummary?
```

### `referrers`

```swift
public var referrers: [Referrer]?
```

A summary of the top referrers for the campaign.

### `eepurl`

```swift
public var eepurl: String?
```

The shortened link used for tracking.

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
### `init(twitter:clicks:referrers:eepurl:campaignId:totalItems:links:)`

```swift
public init(twitter: TwitterStats? = nil, clicks: ClickSummary? = nil, referrers: [Referrer]? = nil, eepurl: String? = nil, campaignId: String? = nil, totalItems: Int? = nil, links: [ResourceLink]? = nil)
```
