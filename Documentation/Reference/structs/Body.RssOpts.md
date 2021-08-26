**STRUCT**

# `Body.RssOpts`

```swift
public struct RssOpts: Model
```

[RSS](https://mailchimp.com/help/share-your-blog-posts-with-mailchimp/) options, specific to an RSS campaign.

## Properties
### `feedURL`

```swift
public var feedURL: URL
```

The URL for the RSS feed.

### `frequency`

```swift
public var frequency: Frequency
```

The frequency of the RSS Campaign.

### `constrainRssImg`

```swift
public var constrainRssImg: Bool?
```

Whether to add CSS to images in the RSS feed to constrain their width in campaigns.

### `schedule`

```swift
public var schedule: Schedule?
```

The schedule for sending the RSS Campaign.

## Methods
### `init(feedURL:frequency:constrainRssImg:schedule:)`

```swift
public init(feedURL: URL, frequency: Frequency, constrainRssImg: Bool? = nil, schedule: Schedule? = nil)
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
