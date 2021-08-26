**STRUCT**

# `NewMembers.Stats`

```swift
public struct Stats: Model
```

Open and click rates for this subscriber.

## Properties
### `avgClickRate`

```swift
public var avgClickRate: Double?
```

A subscriber's average clickthrough rate.

### `avgOpenRate`

```swift
public var avgOpenRate: Double?
```

A subscriber's average open rate.

## Methods
### `init(avgClickRate:avgOpenRate:)`

```swift
public init(avgClickRate: Double? = nil, avgOpenRate: Double? = nil)
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
