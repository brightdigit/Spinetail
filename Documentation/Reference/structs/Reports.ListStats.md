**STRUCT**

# `Reports.ListStats`

```swift
public struct ListStats: Model
```

The average campaign statistics for your list. This won't be present if we haven't calculated it yet for this list.

## Properties
### `clickRate`

```swift
public var clickRate: Double?
```

The average click rate (a percentage represented as a number between 0 and 100) per campaign for the list.

### `openRate`

```swift
public var openRate: Double?
```

The average open rate (a percentage represented as a number between 0 and 100) per campaign for the list.

### `subRate`

```swift
public var subRate: Double?
```

The average number of subscriptions per month for the list.

### `unsubRate`

```swift
public var unsubRate: Double?
```

The average number of unsubscriptions per month for the list.

## Methods
### `init(clickRate:openRate:subRate:unsubRate:)`

```swift
public init(clickRate: Double? = nil, openRate: Double? = nil, subRate: Double? = nil, unsubRate: Double? = nil)
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
