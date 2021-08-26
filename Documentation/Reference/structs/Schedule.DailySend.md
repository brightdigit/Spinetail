**STRUCT**

# `Schedule.DailySend`

```swift
public struct DailySend: Model
```

The days of the week to send a daily RSS Campaign.

## Properties
### `friday`

```swift
public var friday: Bool?
```

Sends the daily RSS Campaign on Fridays.

### `monday`

```swift
public var monday: Bool?
```

Sends the daily RSS Campaign on Mondays.

### `saturday`

```swift
public var saturday: Bool?
```

Sends the daily RSS Campaign on Saturdays.

### `sunday`

```swift
public var sunday: Bool?
```

Sends the daily RSS Campaign on Sundays.

### `thursday`

```swift
public var thursday: Bool?
```

Sends the daily RSS Campaign on Thursdays.

### `tuesday`

```swift
public var tuesday: Bool?
```

Sends the daily RSS Campaign on Tuesdays.

### `wednesday`

```swift
public var wednesday: Bool?
```

Sends the daily RSS Campaign on Wednesdays.

## Methods
### `init(friday:monday:saturday:sunday:thursday:tuesday:wednesday:)`

```swift
public init(friday: Bool? = nil, monday: Bool? = nil, saturday: Bool? = nil, sunday: Bool? = nil, thursday: Bool? = nil, tuesday: Bool? = nil, wednesday: Bool? = nil)
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
