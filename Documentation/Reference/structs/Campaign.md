**STRUCT**

# `Campaign`

```swift
public struct Campaign: Codable
```

A summary of an individual campaign&#x27;s settings and content.

## Properties
### `type`

```swift
public var type: ModelType
```

There are four types of [campaigns](https://mailchimp.com/help/getting-started-with-campaigns/) you can create in Mailchimp. A/B Split campaigns have been deprecated and variate campaigns should be used instead.

### `recipients`

```swift
public var recipients: List1?
```

### `settings`

```swift
public var settings: CampaignSettings1?
```

### `variateSettings`

```swift
public var variateSettings: ABTestOptions?
```

### `tracking`

```swift
public var tracking: CampaignTrackingOptions?
```

### `rssOpts`

```swift
public var rssOpts: RSSOptions?
```

### `socialCard`

```swift
public var socialCard: CampaignSocialCard?
```

### `contentType`

```swift
public var contentType: ContentType?
```

How the campaign&#x27;s content is put together. The old drag and drop editor uses &#x27;template&#x27; while the new editor uses &#x27;multichannel&#x27;. Defaults to template.

## Methods
### `init(type:recipients:settings:variateSettings:tracking:rssOpts:socialCard:contentType:)`

```swift
public init(type: ModelType, recipients: List1? = nil, settings: CampaignSettings1? = nil, variateSettings: ABTestOptions? = nil, tracking: CampaignTrackingOptions? = nil, rssOpts: RSSOptions? = nil, socialCard: CampaignSocialCard? = nil, contentType: ContentType? = nil)
```
