**STRUCT**

# `Campaign4`

```swift
public struct Campaign4: Codable
```

A summary of an individual campaign&#x27;s settings and content.

## Properties
### `_id`

```swift
public var _id: String?
```

A string that uniquely identifies this campaign.

### `webId`

```swift
public var webId: Int?
```

The ID used in the Mailchimp web application. View this campaign in your Mailchimp account at &#x60;https://{dc}.admin.mailchimp.com/campaigns/show/?id&#x3D;{web_id}&#x60;.

### `parentCampaignId`

```swift
public var parentCampaignId: String?
```

If this campaign is the child of another campaign, this identifies the parent campaign. For Example, for RSS or Automation children.

### `type`

```swift
public var type: ModelType?
```

There are four types of [campaigns](https://mailchimp.com/help/getting-started-with-campaigns/) you can create in Mailchimp. A/B Split campaigns have been deprecated and variate campaigns should be used instead.

### `createTime`

```swift
public var createTime: Date?
```

The date and time the campaign was created in ISO 8601 format.

### `archiveUrl`

```swift
public var archiveUrl: String?
```

The link to the campaign&#x27;s archive version in ISO 8601 format.

### `longArchiveUrl`

```swift
public var longArchiveUrl: String?
```

The original link to the campaign&#x27;s archive version.

### `status`

```swift
public var status: Status?
```

The current status of the campaign.

### `emailsSent`

```swift
public var emailsSent: Int?
```

The total number of emails sent for this campaign.

### `sendTime`

```swift
public var sendTime: Date?
```

The date and time a campaign was sent.

### `contentType`

```swift
public var contentType: ContentType?
```

How the campaign&#x27;s content is put together.

### `needsBlockRefresh`

```swift
public var needsBlockRefresh: Bool?
```

Determines if the campaign needs its blocks refreshed by opening the web-based campaign editor. Deprecated and will always return false.

### `resendable`

```swift
public var resendable: Bool?
```

Determines if the campaign qualifies to be resent to non-openers.

### `recipients`

```swift
public var recipients: List8?
```

### `settings`

```swift
public var settings: CampaignSettings4?
```

### `variateSettings`

```swift
public var variateSettings: ABTestOptions2?
```

### `tracking`

```swift
public var tracking: CampaignTrackingOptions?
```

### `rssOpts`

```swift
public var rssOpts: RSSOptions3?
```

### `abSplitOpts`

```swift
public var abSplitOpts: ABTestingOptions?
```

### `socialCard`

```swift
public var socialCard: CampaignSocialCard?
```

### `reportSummary`

```swift
public var reportSummary: CampaignReportSummary1?
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
### `init(_id:webId:parentCampaignId:type:createTime:archiveUrl:longArchiveUrl:status:emailsSent:sendTime:contentType:needsBlockRefresh:resendable:recipients:settings:variateSettings:tracking:rssOpts:abSplitOpts:socialCard:reportSummary:deliveryStatus:links:)`

```swift
public init(_id: String? = nil, webId: Int? = nil, parentCampaignId: String? = nil, type: ModelType? = nil, createTime: Date? = nil, archiveUrl: String? = nil, longArchiveUrl: String? = nil, status: Status? = nil, emailsSent: Int? = nil, sendTime: Date? = nil, contentType: ContentType? = nil, needsBlockRefresh: Bool? = nil, resendable: Bool? = nil, recipients: List8? = nil, settings: CampaignSettings4? = nil, variateSettings: ABTestOptions2? = nil, tracking: CampaignTrackingOptions? = nil, rssOpts: RSSOptions3? = nil, abSplitOpts: ABTestingOptions? = nil, socialCard: CampaignSocialCard? = nil, reportSummary: CampaignReportSummary1? = nil, deliveryStatus: CampaignDeliveryStatus? = nil, links: [ResourceLink]? = nil)
```
