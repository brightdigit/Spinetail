**STRUCT**

# `WeeklyStats.Clicks`

```swift
public struct Clicks: Model
```

The clicks and visits data from the last five weeks.

## Properties
### `date`

```swift
public var date: String?
```

### `val`

```swift
public var val: Int?
```

## Methods
### `init(date:val:)`

```swift
public init(date: String? = nil, val: Int? = nil)
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
