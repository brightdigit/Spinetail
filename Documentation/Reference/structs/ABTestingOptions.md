**STRUCT**

# `ABTestingOptions`

```swift
public struct ABTestingOptions: Codable
```

[A/B Testing](https://mailchimp.com/help/about-ab-testing-campaigns/) options for a campaign.

## Properties
### `splitTest`

```swift
public var splitTest: SplitTest?
```

The type of AB split to run.

### `pickWinner`

```swift
public var pickWinner: PickWinner?
```

How we should evaluate a winner. Based on &#x27;opens&#x27;, &#x27;clicks&#x27;, or &#x27;manual&#x27;.

### `waitUnits`

```swift
public var waitUnits: WaitUnits?
```

How unit of time for measuring the winner (&#x27;hours&#x27; or &#x27;days&#x27;). This cannot be changed after a campaign is sent.

### `waitTime`

```swift
public var waitTime: Int?
```

The amount of time to wait before picking a winner. This cannot be changed after a campaign is sent.

### `splitSize`

```swift
public var splitSize: Int?
```

The size of the split groups. Campaigns split based on &#x27;schedule&#x27; are forced to have a 50/50 split. Valid split integers are between 1-50.

### `fromNameA`

```swift
public var fromNameA: String?
```

For campaigns split on &#x27;From Name&#x27;, the name for Group A.

### `fromNameB`

```swift
public var fromNameB: String?
```

For campaigns split on &#x27;From Name&#x27;, the name for Group B.

### `replyEmailA`

```swift
public var replyEmailA: String?
```

For campaigns split on &#x27;From Name&#x27;, the reply-to address for Group A.

### `replyEmailB`

```swift
public var replyEmailB: String?
```

For campaigns split on &#x27;From Name&#x27;, the reply-to address for Group B.

### `subjectA`

```swift
public var subjectA: String?
```

For campaigns split on &#x27;Subject Line&#x27;, the subject line for Group A.

### `subjectB`

```swift
public var subjectB: String?
```

For campaigns split on &#x27;Subject Line&#x27;, the subject line for Group B.

### `sendTimeA`

```swift
public var sendTimeA: Date?
```

The send time for Group A.

### `sendTimeB`

```swift
public var sendTimeB: Date?
```

The send time for Group B.

### `sendTimeWinner`

```swift
public var sendTimeWinner: String?
```

The send time for the winning version.

## Methods
### `init(splitTest:pickWinner:waitUnits:waitTime:splitSize:fromNameA:fromNameB:replyEmailA:replyEmailB:subjectA:subjectB:sendTimeA:sendTimeB:sendTimeWinner:)`

```swift
public init(splitTest: SplitTest? = nil, pickWinner: PickWinner? = nil, waitUnits: WaitUnits? = nil, waitTime: Int? = nil, splitSize: Int? = nil, fromNameA: String? = nil, fromNameB: String? = nil, replyEmailA: String? = nil, replyEmailB: String? = nil, subjectA: String? = nil, subjectB: String? = nil, sendTimeA: Date? = nil, sendTimeB: Date? = nil, sendTimeWinner: String? = nil)
```
