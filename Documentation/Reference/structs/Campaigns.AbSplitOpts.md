**STRUCT**

# `Campaigns.AbSplitOpts`

```swift
public struct AbSplitOpts: Model
```

[A/B Testing](https://mailchimp.com/help/about-ab-testing-campaigns/) options for a campaign.

## Properties
### `fromNamea`

```swift
public var fromNamea: String?
```

For campaigns split on 'From Name', the name for Group A.

### `fromNameb`

```swift
public var fromNameb: String?
```

For campaigns split on 'From Name', the name for Group B.

### `pickWinner`

```swift
public var pickWinner: PickWinner?
```

How we should evaluate a winner. Based on 'opens', 'clicks', or 'manual'.

### `replyEmaila`

```swift
public var replyEmaila: String?
```

For campaigns split on 'From Name', the reply-to address for Group A.

### `replyEmailb`

```swift
public var replyEmailb: String?
```

For campaigns split on 'From Name', the reply-to address for Group B.

### `sendTimea`

```swift
public var sendTimea: DateTime
```

The send time for Group A.

### `sendTimeb`

```swift
public var sendTimeb: DateTime
```

The send time for Group B.

### `sendTimeWinner`

```swift
public var sendTimeWinner: String?
```

The send time for the winning version.

### `splitSize`

```swift
public var splitSize: Int?
```

The size of the split groups. Campaigns split based on 'schedule' are forced to have a 50/50 split. Valid split integers are between 1-50.

### `splitTest`

```swift
public var splitTest: SplitTest?
```

The type of AB split to run.

### `subjecta`

```swift
public var subjecta: String?
```

For campaigns split on 'Subject Line', the subject line for Group A.

### `subjectb`

```swift
public var subjectb: String?
```

For campaigns split on 'Subject Line', the subject line for Group B.

### `waitTime`

```swift
public var waitTime: Int?
```

The amount of time to wait before picking a winner. This cannot be changed after a campaign is sent.

### `waitUnits`

```swift
public var waitUnits: WaitUnits?
```

How unit of time for measuring the winner ('hours' or 'days'). This cannot be changed after a campaign is sent.

## Methods
### `init(fromNamea:fromNameb:pickWinner:replyEmaila:replyEmailb:sendTimea:sendTimeb:sendTimeWinner:splitSize:splitTest:subjecta:subjectb:waitTime:waitUnits:)`

```swift
public init(fromNamea: String? = nil, fromNameb: String? = nil, pickWinner: PickWinner? = nil, replyEmaila: String? = nil, replyEmailb: String? = nil, sendTimea: Date? = nil, sendTimeb: Date? = nil, sendTimeWinner: String? = nil, splitSize: Int? = nil, splitTest: SplitTest? = nil, subjecta: String? = nil, subjectb: String? = nil, waitTime: Int? = nil, waitUnits: WaitUnits? = nil)
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
