**STRUCT**

# `Campaign2`

```swift
public struct Campaign2: Codable
```

A summary of an individual campaign&#x27;s settings and content.

## Properties
### `recipients`

```swift
public var recipients: List2?
```

### `settings`

```swift
public var settings: CampaignSettings2
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
public var rssOpts: RSSOptions1?
```

### `socialCard`

```swift
public var socialCard: CampaignSocialCard?
```

## Methods
### `init(recipients:settings:variateSettings:tracking:rssOpts:socialCard:)`

```swift
public init(recipients: List2? = nil, settings: CampaignSettings2, variateSettings: ABTestOptions? = nil, tracking: CampaignTrackingOptions? = nil, rssOpts: RSSOptions1? = nil, socialCard: CampaignSocialCard? = nil)
```
