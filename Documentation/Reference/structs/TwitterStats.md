**STRUCT**

# `TwitterStats`

```swift
public struct TwitterStats: Codable
```

A summary of Twitter activity for a campaign.

## Properties
### `tweets`

```swift
public var tweets: Int?
```

The number of tweets including a link to the campaign.

### `firstTweet`

```swift
public var firstTweet: String?
```

The day and time of the first recorded tweet with a link to the campaign.

### `lastTweet`

```swift
public var lastTweet: String?
```

The day and time of the last recorded tweet with a link to the campaign.

### `retweets`

```swift
public var retweets: Int?
```

The number of retweets that include a link to the campaign.

### `statuses`

```swift
public var statuses: [TwitterStatus]?
```

A summary of tweets that include a link to the campaign.

## Methods
### `init(tweets:firstTweet:lastTweet:retweets:statuses:)`

```swift
public init(tweets: Int? = nil, firstTweet: String? = nil, lastTweet: String? = nil, retweets: Int? = nil, statuses: [TwitterStatus]? = nil)
```
