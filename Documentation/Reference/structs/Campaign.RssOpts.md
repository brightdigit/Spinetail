**STRUCT**

# `Campaign.RssOpts`

```swift
public struct RssOpts: Model
```

[RSS](https://mailchimp.com/help/share-your-blog-posts-with-mailchimp/) options for a campaign.

## Properties
### `constrainRssImg`

```swift
public var constrainRssImg: Bool?
```

Whether to add CSS to images in the RSS feed to constrain their width in campaigns.

### `feedURL`

```swift
public var feedURL: URL?
```

The URL for the RSS feed.

### `frequency`

```swift
public var frequency: Frequency?
```

The frequency of the RSS Campaign.

### `lastSent`

```swift
public var lastSent: DateTime
```

The date the campaign was last sent.

### `schedule`

```swift
public var schedule: Schedule?
```

The schedule for sending the RSS Campaign.

## Methods
### `init(constrainRssImg:feedURL:frequency:lastSent:schedule:)`

```swift
public init(constrainRssImg: Bool? = nil, feedURL: URL? = nil, frequency: Frequency? = nil, lastSent: Date? = nil, schedule: Schedule? = nil)
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
