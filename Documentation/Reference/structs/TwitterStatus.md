**STRUCT**

# `TwitterStatus`

```swift
public struct TwitterStatus: Codable
```

An individual tweet.

## Properties
### `status`

```swift
public var status: String?
```

The body of the tweet.

### `screenName`

```swift
public var screenName: String?
```

The Twitter handle for the author of the tweet.

### `statusId`

```swift
public var statusId: String?
```

The individual id for the tweet.

### `datetime`

```swift
public var datetime: Date?
```

A timestamp for the tweet.

### `isRetweet`

```swift
public var isRetweet: Bool?
```

A &#x27;true&#x27; or &#x27;false&#x27; status of whether the tweet is a retweet.

## Methods
### `init(status:screenName:statusId:datetime:isRetweet:)`

```swift
public init(status: String? = nil, screenName: String? = nil, statusId: String? = nil, datetime: Date? = nil, isRetweet: Bool? = nil)
```
