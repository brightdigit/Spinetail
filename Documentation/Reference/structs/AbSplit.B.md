**STRUCT**

# `AbSplit.B`

```swift
public struct B: Model
```

Stats for Campaign B.

## Properties
### `abuseReports`

```swift
public var abuseReports: Int?
```

Abuse reports for Campaign B.

### `bounces`

```swift
public var bounces: Int?
```

Bounces for Campaign B.

### `forwards`

```swift
public var forwards: Int?
```

Forwards for Campaign B.

### `forwardsOpens`

```swift
public var forwardsOpens: Int?
```

Opens for forwards from Campaign B.

### `lastOpen`

```swift
public var lastOpen: String?
```

The last open for Campaign B.

### `opens`

```swift
public var opens: Int?
```

Opens for Campaign B.

### `recipientClicks`

```swift
public var recipientClicks: Int?
```

Recipients clicks for Campaign B.

### `uniqueOpens`

```swift
public var uniqueOpens: Int?
```

Unique opens for Campaign B.

### `unsubs`

```swift
public var unsubs: Int?
```

Unsubscribes for Campaign B.

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
