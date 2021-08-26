**STRUCT**

# `Status200.UrlsClicked`

```swift
public struct UrlsClicked: Model
```

A report of links clicked in a specific campaign.

## Properties
### `links`

```swift
public var links: [Links]?
```

A list of link types and descriptions for the API schema documents.

### `abSplit`

```swift
public var abSplit: AbSplit?
```

A breakdown of clicks by different groups of an A/B Split campaign. Does not return information about Multivariate Campaigns.

### `campaignId`

```swift
public var campaignId: String?
```

The campaign id.

### `clickPercentage`

```swift
public var clickPercentage: Double?
```

The percentage of total clicks a link generated for a campaign.

### `id`

```swift
public var id: String?
```

The unique id for the link.

### `lastClick`

```swift
public var lastClick: DateTime
```

The date and time for the last recorded click for a link in ISO 8601 format.

### `totalClicks`

```swift
public var totalClicks: Int?
```

The number of total clicks for a link.

### `uniqueClickPercentage`

```swift
public var uniqueClickPercentage: Double?
```

The percentage of unique clicks a link generated for a campaign.

### `uniqueClicks`

```swift
public var uniqueClicks: Int?
```

Number of unique clicks for a link.

### `url`

```swift
public var url: String?
```

The URL for the link in the campaign.

## Methods
### `init(links:abSplit:campaignId:clickPercentage:id:lastClick:totalClicks:uniqueClickPercentage:uniqueClicks:url:)`

```swift
public init(links: [Links]? = nil, abSplit: AbSplit? = nil, campaignId: String? = nil, clickPercentage: Double? = nil, id: String? = nil, lastClick: Date? = nil, totalClicks: Int? = nil, uniqueClickPercentage: Double? = nil, uniqueClicks: Int? = nil, url: String? = nil)
```

### `init(from:)`

```swift
public init(from decoder: Decoder) throws
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| decoder | The decoder to read data from. |

### `encode(to:)`

```swift
public func encode(to encoder: Encoder) throws
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| encoder | The encoder to write data to. |
