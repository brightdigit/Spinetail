**STRUCT**

# `LandingPages.Timeseries`

```swift
public struct Timeseries: Model
```

A summary of an individual landing page's settings and content.

## Properties
### `dailyStats`

```swift
public var dailyStats: DailyStats?
```

The clicks and visits data from the last seven days.

### `weeklyStats`

```swift
public var weeklyStats: WeeklyStats?
```

The clicks and visits data from the last five weeks.

## Methods
### `init(dailyStats:weeklyStats:)`

```swift
public init(dailyStats: DailyStats? = nil, weeklyStats: WeeklyStats? = nil)
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
