**STRUCT**

# `DailyListActivity`

```swift
public struct DailyListActivity: Codable
```

One day&#x27;s worth of list activity. Doesn&#x27;t include Automation activity.

## Properties
### `day`

```swift
public var day: String?
```

The date for the activity summary.

### `emailsSent`

```swift
public var emailsSent: Int?
```

The total number of emails sent on the date for the activity summary.

### `uniqueOpens`

```swift
public var uniqueOpens: Int?
```

The number of unique opens.

### `recipientClicks`

```swift
public var recipientClicks: Int?
```

The number of clicks.

### `hardBounce`

```swift
public var hardBounce: Int?
```

The number of hard bounces.

### `softBounce`

```swift
public var softBounce: Int?
```

The number of soft bounces

### `subs`

```swift
public var subs: Int?
```

The number of subscribes.

### `unsubs`

```swift
public var unsubs: Int?
```

The number of unsubscribes.

### `otherAdds`

```swift
public var otherAdds: Int?
```

The number of subscribers who may have been added outside of the [double opt-in process](https://mailchimp.com/help/about-double-opt-in/), such as imports or API activity.

### `otherRemoves`

```swift
public var otherRemoves: Int?
```

The number of subscribers who may have been removed outside of unsubscribing or reporting an email as spam (for example, deleted subscribers).

### `links`

```swift
public var links: [ResourceLink]?
```

A list of link types and descriptions for the API schema documents.

## Methods
### `init(day:emailsSent:uniqueOpens:recipientClicks:hardBounce:softBounce:subs:unsubs:otherAdds:otherRemoves:links:)`

```swift
public init(day: String? = nil, emailsSent: Int? = nil, uniqueOpens: Int? = nil, recipientClicks: Int? = nil, hardBounce: Int? = nil, softBounce: Int? = nil, subs: Int? = nil, unsubs: Int? = nil, otherAdds: Int? = nil, otherRemoves: Int? = nil, links: [ResourceLink]? = nil)
```
