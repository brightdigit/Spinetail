**STRUCT**

# `CampaignReport1`

```swift
public struct CampaignReport1: Codable
```

Report details about a sent campaign.

## Properties
### `_id`

```swift
public var _id: String?
```

A string that uniquely identifies this campaign.

### `campaignTitle`

```swift
public var campaignTitle: String?
```

The title of the campaign.

### `type`

```swift
public var type: String?
```

The type of campaign (regular, plain-text, ab_split, rss, automation, variate, or auto).

### `listId`

```swift
public var listId: String?
```

The unique list id.

### `listIsActive`

```swift
public var listIsActive: Bool?
```

The status of the list used, namely if it&#x27;s deleted or disabled.

### `listName`

```swift
public var listName: String?
```

The name of the list.

### `subjectLine`

```swift
public var subjectLine: String?
```

The subject line for the campaign.

### `previewText`

```swift
public var previewText: String?
```

The preview text for the campaign.

### `emailsSent`

```swift
public var emailsSent: Int?
```

The total number of emails sent for this campaign.

### `abuseReports`

```swift
public var abuseReports: Int?
```

The number of abuse reports generated for this campaign.

### `unsubscribed`

```swift
public var unsubscribed: Int?
```

The total number of unsubscribed members for this campaign.

### `sendTime`

```swift
public var sendTime: Date?
```

The date and time a campaign was sent in ISO 8601 format.

### `rssLastSend`

```swift
public var rssLastSend: Date?
```

For RSS campaigns, the date and time of the last send in ISO 8601 format.

### `bounces`

```swift
public var bounces: Bounces?
```

### `forwards`

```swift
public var forwards: Forwards?
```

### `opens`

```swift
public var opens: Opens?
```

### `clicks`

```swift
public var clicks: Clicks?
```

### `facebookLikes`

```swift
public var facebookLikes: FacebookLikes?
```

### `industryStats`

```swift
public var industryStats: IndustryStats?
```

### `listStats`

```swift
public var listStats: ListStats?
```

### `abSplit`

```swift
public var abSplit: ABSplitStats?
```

### `timewarp`

```swift
public var timewarp: [CampaignReports1Timewarp]?
```

An hourly breakdown of sends, opens, and clicks if a campaign is sent using timewarp.

### `timeseries`

```swift
public var timeseries: [CampaignReports1Timeseries]?
```

An hourly breakdown of the performance of the campaign over the first 24 hours.

### `shareReport`

```swift
public var shareReport: ShareReport?
```

### `ecommerce`

```swift
public var ecommerce: ECommerceReport?
```

### `deliveryStatus`

```swift
public var deliveryStatus: CampaignDeliveryStatus?
```

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(_id:campaignTitle:type:listId:listIsActive:listName:subjectLine:previewText:emailsSent:abuseReports:unsubscribed:sendTime:rssLastSend:bounces:forwards:opens:clicks:facebookLikes:industryStats:listStats:abSplit:timewarp:timeseries:shareReport:ecommerce:deliveryStatus:links:)`

```swift
public init(_id: String? = nil, campaignTitle: String? = nil, type: String? = nil, listId: String? = nil, listIsActive: Bool? = nil, listName: String? = nil, subjectLine: String? = nil, previewText: String? = nil, emailsSent: Int? = nil, abuseReports: Int? = nil, unsubscribed: Int? = nil, sendTime: Date? = nil, rssLastSend: Date? = nil, bounces: Bounces? = nil, forwards: Forwards? = nil, opens: Opens? = nil, clicks: Clicks? = nil, facebookLikes: FacebookLikes? = nil, industryStats: IndustryStats? = nil, listStats: ListStats? = nil, abSplit: ABSplitStats? = nil, timewarp: [CampaignReports1Timewarp]? = nil, timeseries: [CampaignReports1Timeseries]? = nil, shareReport: ShareReport? = nil, ecommerce: ECommerceReport? = nil, deliveryStatus: CampaignDeliveryStatus? = nil, links: [ResourceLink]? = nil)
```
