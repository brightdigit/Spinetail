**STRUCT**

# `ClickDetailReport1`

```swift
public struct ClickDetailReport1: Codable
```

A report of links clicked in a specific campaign.

## Properties
### `_id`

```swift
public var _id: String?
```

The unique id for the link.

### `url`

```swift
public var url: String?
```

The URL for the link in the campaign.

### `totalClicks`

```swift
public var totalClicks: Int?
```

The number of total clicks for a link.

### `clickPercentage`

```swift
public var clickPercentage: Decimal?
```

The percentage of total clicks a link generated for a campaign.

### `uniqueClicks`

```swift
public var uniqueClicks: Int?
```

Number of unique clicks for a link.

### `uniqueClickPercentage`

```swift
public var uniqueClickPercentage: Decimal?
```

The percentage of unique clicks a link generated for a campaign.

### `lastClick`

```swift
public var lastClick: Date?
```

The date and time for the last recorded click for a link in ISO 8601 format.

### `abSplit`

```swift
public var abSplit: ABSplit?
```

### `campaignId`

```swift
public var campaignId: String?
```

The campaign id.

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(_id:url:totalClicks:clickPercentage:uniqueClicks:uniqueClickPercentage:lastClick:abSplit:campaignId:links:)`

```swift
public init(_id: String? = nil, url: String? = nil, totalClicks: Int? = nil, clickPercentage: Decimal? = nil, uniqueClicks: Int? = nil, uniqueClickPercentage: Decimal? = nil, lastClick: Date? = nil, abSplit: ABSplit? = nil, campaignId: String? = nil, links: [ResourceLink]? = nil)
```
