**STRUCT**

# `RSSOptions1`

```swift
public struct RSSOptions1: Codable
```

[RSS](https://mailchimp.com/help/share-your-blog-posts-with-mailchimp/) options for a campaign.

## Properties
### `feedUrl`

```swift
public var feedUrl: String
```

The URL for the RSS feed.

### `frequency`

```swift
public var frequency: Frequency
```

The frequency of the RSS Campaign.

### `schedule`

```swift
public var schedule: SendingSchedule?
```

### `constrainRssImg`

```swift
public var constrainRssImg: Bool?
```

Whether to add CSS to images in the RSS feed to constrain their width in campaigns.

## Methods
### `init(feedUrl:frequency:schedule:constrainRssImg:)`

```swift
public init(feedUrl: String, frequency: Frequency, schedule: SendingSchedule? = nil, constrainRssImg: Bool? = nil)
```
