**STRUCT**

# `Status200.Referrers`

```swift
public struct Referrers: Model
```

A single instance of a campaign referral.

## Properties
### `clicks`

```swift
public var clicks: Int?
```

The number of clicks a single referrer generated.

### `firstClick`

```swift
public var firstClick: DateTime
```

The timestamp for the first click from this referrer.

### `lastClick`

```swift
public var lastClick: DateTime
```

The timestamp for the last click from this referrer.

### `referrer`

```swift
public var referrer: String?
```

A referrer (truncated to 100 bytes).

## Methods
### `init(clicks:firstClick:lastClick:referrer:)`

```swift
public init(clicks: Int? = nil, firstClick: Date? = nil, lastClick: Date? = nil, referrer: String? = nil)
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
