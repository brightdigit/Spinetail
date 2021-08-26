**STRUCT**

# `Results.Campaign`

```swift
public struct Campaign: Model
```

A summary of an individual campaign's settings and content.

## Properties
### `links`

```swift
public var links: [Links]?
```

A list of link types and descriptions for the API schema documents.

### `abSplitOpts`

```swift
public var abSplitOpts: AbSplitOpts?
```

[A/B Testing](https://mailchimp.com/help/about-ab-testing-campaigns/) options for a campaign.

### `archiveURL`

```swift
public var archiveURL: String?
```

The link to the campaign's archive version in ISO 8601 format.

### `contentType`

```swift
public var contentType: ContentType?
```

How the campaign's content is put together.

### `createTime`

```swift
public var createTime: DateTime
```

The date and time the campaign was created in ISO 8601 format.

### `deliveryStatus`

```swift
public var deliveryStatus: DeliveryStatus?
```

Updates on campaigns in the process of sending.

### `emailsSent`

```swift
public var emailsSent: Int?
```

The total number of emails sent for this campaign.

### `id`

```swift
public var id: String?
```

A string that uniquely identifies this campaign.

### `longArchiveURL`

```swift
public var longArchiveURL: String?
```

The original link to the campaign's archive version.

### `needsBlockRefresh`

```swift
public var needsBlockRefresh: Bool?
```

Determines if the campaign needs its blocks refreshed by opening the web-based campaign editor. Deprecated and will always return false.

### `parentCampaignId`

```swift
public var parentCampaignId: String?
```

If this campaign is the child of another campaign, this identifies the parent campaign. For Example, for RSS or Automation children.

### `recipients`

```swift
public var recipients: Recipients?
```

List settings for the campaign.

### `reportSummary`

```swift
public var reportSummary: ReportSummary?
```

For sent campaigns, a summary of opens, clicks, and e-commerce data.

### `resendable`

```swift
public var resendable: Bool?
```

Determines if the campaign qualifies to be resent to non-openers.

### `rssOpts`

```swift
public var rssOpts: RssOpts?
```

[RSS](https://mailchimp.com/help/share-your-blog-posts-with-mailchimp/) options for a campaign.

### `sendTime`

```swift
public var sendTime: DateTime
```

The date and time a campaign was sent.

### `settings`

```swift
public var settings: Settings?
```

The settings for your campaign, including subject, from name, reply-to address, and more.

### `socialCard`

```swift
public var socialCard: SocialCard?
```

The preview for the campaign, rendered by social networks like Facebook and Twitter. [Learn more](https://mailchimp.com/help/enable-and-customize-social-cards/).

### `status`

```swift
public var status: Status?
```

The current status of the campaign.

### `tracking`

```swift
public var tracking: Tracking?
```

The tracking options for a campaign.

### `type`

```swift
public var type: `Type`?
```

There are four types of [campaigns](https://mailchimp.com/help/getting-started-with-campaigns/) you can create in Mailchimp. A/B Split campaigns have been deprecated and variate campaigns should be used instead.

### `variateSettings`

```swift
public var variateSettings: VariateSettings?
```

The settings specific to A/B test campaigns.

### `webId`

```swift
public var webId: Int?
```

The ID used in the Mailchimp web application. View this campaign in your Mailchimp account at `https://{dc}.admin.mailchimp.com/campaigns/show/?id={web_id}`.

## Methods
### `init(links:abSplitOpts:archiveURL:contentType:createTime:deliveryStatus:emailsSent:id:longArchiveURL:needsBlockRefresh:parentCampaignId:recipients:reportSummary:resendable:rssOpts:sendTime:settings:socialCard:status:tracking:type:variateSettings:webId:)`

```swift
public init(links: [Links]? = nil, abSplitOpts: AbSplitOpts? = nil, archiveURL: String? = nil, contentType: ContentType? = nil, createTime: Date? = nil, deliveryStatus: DeliveryStatus? = nil, emailsSent: Int? = nil, id: String? = nil, longArchiveURL: String? = nil, needsBlockRefresh: Bool? = nil, parentCampaignId: String? = nil, recipients: Recipients? = nil, reportSummary: ReportSummary? = nil, resendable: Bool? = nil, rssOpts: RssOpts? = nil, sendTime: Date? = nil, settings: Settings? = nil, socialCard: SocialCard? = nil, status: Status? = nil, tracking: Tracking? = nil, type: Type? = nil, variateSettings: VariateSettings? = nil, webId: Int? = nil)
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
