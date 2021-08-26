**STRUCT**

# `Timeseries.WeeklyStats`

```swift
public struct WeeklyStats: Model
```

The clicks and visits data from the last five weeks.

## Properties
### `clicks`

```swift
public var clicks: [Clicks]?
```

The total number of clicks in a week.

### `uniqueVisits`

```swift
public var uniqueVisits: [UniqueVisits]?
```

### `visits`

```swift
public var visits: [Visits]?
```

The total number of visits in a week.

## Methods
### `init(clicks:uniqueVisits:visits:)`

```swift
public init(clicks: [Clicks]? = nil, uniqueVisits: [UniqueVisits]? = nil, visits: [Visits]? = nil)
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
