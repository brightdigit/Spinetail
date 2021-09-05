**STRUCT**

# `Status200.Twitter`

```swift
public struct Twitter: Model
```

A summary of Twitter activity for a campaign.

## Properties
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
public var statuses: [Statuses]?
```

A summary of tweets that include a link to the campaign.

### `tweets`

```swift
public var tweets: Int?
```

The number of tweets including a link to the campaign.

## Methods
### `init(firstTweet:lastTweet:retweets:statuses:tweets:)`

```swift
public init(firstTweet: String? = nil, lastTweet: String? = nil, retweets: Int? = nil, statuses: [Statuses]? = nil, tweets: Int? = nil)
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
