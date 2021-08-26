**STRUCT**

# `Twitter.Statuses`

```swift
public struct Statuses: Model
```

An individual tweet.

## Properties
### `datetime`

```swift
public var datetime: DateTime
```

A timestamp for the tweet.

### `isRetweet`

```swift
public var isRetweet: Bool?
```

A 'true' or 'false' status of whether the tweet is a retweet.

### `screenName`

```swift
public var screenName: String?
```

The Twitter handle for the author of the tweet.

### `status`

```swift
public var status: String?
```

The body of the tweet.

### `statusId`

```swift
public var statusId: String?
```

The individual id for the tweet.

## Methods
### `init(datetime:isRetweet:screenName:status:statusId:)`

```swift
public init(datetime: Date? = nil, isRetweet: Bool? = nil, screenName: String? = nil, status: String? = nil, statusId: String? = nil)
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
