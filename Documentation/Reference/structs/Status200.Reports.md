**STRUCT**

# `Status200.Reports`

```swift
public struct Reports: Model
```

Report details about a sent campaign.

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

General stats about different groups of an A/B Split campaign. Does not return information about Multivariate Campaigns.

### `abuseReports`

```swift
public var abuseReports: Int?
```

The number of abuse reports generated for this campaign.

### `bounces`

```swift
public var bounces: Bounces?
```

An object describing the bounce summary for the campaign.

### `campaignTitle`

```swift
public var campaignTitle: String?
```

The title of the campaign.

### `clicks`

```swift
public var clicks: Clicks?
```

An object describing the click activity for the campaign.

### `deliveryStatus`

```swift
public var deliveryStatus: DeliveryStatus?
```

Updates on campaigns in the process of sending.

### `ecommerce`

```swift
public var ecommerce: Ecommerce?
```

E-Commerce stats for a campaign.

### `emailsSent`

```swift
public var emailsSent: Int?
```

The total number of emails sent for this campaign.

### `facebookLikes`

```swift
public var facebookLikes: FacebookLikes?
```

An object describing campaign engagement on Facebook.

### `forwards`

```swift
public var forwards: Forwards?
```

An object describing the forwards and forward activity for the campaign.

### `id`

```swift
public var id: String?
```

A string that uniquely identifies this campaign.

### `industryStats`

```swift
public var industryStats: IndustryStats?
```

The average campaign statistics for your industry.

### `listId`

```swift
public var listId: String?
```

The unique list id.

### `listIsActive`

```swift
public var listIsActive: Bool?
```

The status of the list used, namely if it's deleted or disabled.

### `listName`

```swift
public var listName: String?
```

The name of the list.

### `listStats`

```swift
public var listStats: ListStats?
```

The average campaign statistics for your list. This won't be present if we haven't calculated it yet for this list.

### `opens`

```swift
public var opens: Opens?
```

An object describing the open activity for the campaign.

### `previewText`

```swift
public var previewText: String?
```

The preview text for the campaign.

### `rssLastSend`

```swift
public var rssLastSend: DateTime
```

For RSS campaigns, the date and time of the last send in ISO 8601 format.

### `sendTime`

```swift
public var sendTime: DateTime
```

The date and time a campaign was sent in ISO 8601 format.

### `shareReport`

```swift
public var shareReport: ShareReport?
```

The url and password for the [VIP report](https://mailchimp.com/help/share-a-campaign-report/).

### `subjectLine`

```swift
public var subjectLine: String?
```

The subject line for the campaign.

### `timeseries`

```swift
public var timeseries: [Timeseries]?
```

An hourly breakdown of the performance of the campaign over the first 24 hours.

### `timewarp`

```swift
public var timewarp: [Timewarp]?
```

An hourly breakdown of sends, opens, and clicks if a campaign is sent using timewarp.

### `type`

```swift
public var type: String?
```

The type of campaign (regular, plain-text, ab_split, rss, automation, variate, or auto).

### `unsubscribed`

```swift
public var unsubscribed: Int?
```

The total number of unsubscribed members for this campaign.

## Methods
### `init(links:abSplit:abuseReports:bounces:campaignTitle:clicks:deliveryStatus:ecommerce:emailsSent:facebookLikes:forwards:id:industryStats:listId:listIsActive:listName:listStats:opens:previewText:rssLastSend:sendTime:shareReport:subjectLine:timeseries:timewarp:type:unsubscribed:)`

```swift
public init(links: [Links]? = nil, abSplit: AbSplit? = nil, abuseReports: Int? = nil, bounces: Bounces? = nil, campaignTitle: String? = nil, clicks: Clicks? = nil, deliveryStatus: DeliveryStatus? = nil, ecommerce: Ecommerce? = nil, emailsSent: Int? = nil, facebookLikes: FacebookLikes? = nil, forwards: Forwards? = nil, id: String? = nil, industryStats: IndustryStats? = nil, listId: String? = nil, listIsActive: Bool? = nil, listName: String? = nil, listStats: ListStats? = nil, opens: Opens? = nil, previewText: String? = nil, rssLastSend: Date? = nil, sendTime: Date? = nil, shareReport: ShareReport? = nil, subjectLine: String? = nil, timeseries: [Timeseries]? = nil, timewarp: [Timewarp]? = nil, type: String? = nil, unsubscribed: Int? = nil)
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
