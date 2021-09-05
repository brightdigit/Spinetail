**STRUCT**

# `Status200.Timewarp`

```swift
public struct Timewarp: Model
```

Report details about a sent campaign.

## Properties
### `bounces`

```swift
public var bounces: Int?
```

The number of bounces.

### `clicks`

```swift
public var clicks: Int?
```

The number of clicks.

### `gmtOffset`

```swift
public var gmtOffset: Int?
```

For campaigns sent with timewarp, the time zone group the member is apart of.

### `lastClick`

```swift
public var lastClick: DateTime
```

The date and time of the last click in ISO 8601 format.

### `lastOpen`

```swift
public var lastOpen: DateTime
```

The date and time of the last open in ISO 8601 format.

### `opens`

```swift
public var opens: Int?
```

The number of opens.

### `uniqueClicks`

```swift
public var uniqueClicks: Int?
```

The number of unique clicks.

### `uniqueOpens`

```swift
public var uniqueOpens: Int?
```

The number of unique opens.

## Methods
### `init(bounces:clicks:gmtOffset:lastClick:lastOpen:opens:uniqueClicks:uniqueOpens:)`

```swift
public init(bounces: Int? = nil, clicks: Int? = nil, gmtOffset: Int? = nil, lastClick: Date? = nil, lastOpen: Date? = nil, opens: Int? = nil, uniqueClicks: Int? = nil, uniqueOpens: Int? = nil)
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
