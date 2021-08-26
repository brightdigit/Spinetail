**STRUCT**

# `AbSplit.A`

```swift
public struct A: Model
```

Stats for Campaign A.

## Properties
### `abuseReports`

```swift
public var abuseReports: Int?
```

Abuse reports for Campaign A.

### `bounces`

```swift
public var bounces: Int?
```

Bounces for Campaign A.

### `forwards`

```swift
public var forwards: Int?
```

Forwards for Campaign A.

### `forwardsOpens`

```swift
public var forwardsOpens: Int?
```

Opens from forwards for Campaign A.

### `lastOpen`

```swift
public var lastOpen: String?
```

The last open for Campaign A.

### `opens`

```swift
public var opens: Int?
```

Opens for Campaign A.

### `recipientClicks`

```swift
public var recipientClicks: Int?
```

Recipient Clicks for Campaign A.

### `uniqueOpens`

```swift
public var uniqueOpens: Int?
```

Unique opens for Campaign A.

### `unsubs`

```swift
public var unsubs: Int?
```

Unsubscribes for Campaign A.

## Methods
### `init(abuseReports:bounces:forwards:forwardsOpens:lastOpen:opens:recipientClicks:uniqueOpens:unsubs:)`

```swift
public init(abuseReports: Int? = nil, bounces: Int? = nil, forwards: Int? = nil, forwardsOpens: Int? = nil, lastOpen: String? = nil, opens: Int? = nil, recipientClicks: Int? = nil, uniqueOpens: Int? = nil, unsubs: Int? = nil)
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
