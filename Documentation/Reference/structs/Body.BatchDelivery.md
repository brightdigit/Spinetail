**STRUCT**

# `Body.BatchDelivery`

```swift
public struct BatchDelivery: Model
```

Choose whether the campaign should use [Batch Delivery](https://mailchimp.com/help/schedule-batch-delivery/). Cannot be set to `true` for campaigns using [Timewarp](https://mailchimp.com/help/use-timewarp/).

## Properties
### `batchCount`

```swift
public var batchCount: Int
```

The number of batches for the campaign send.

### `batchDelay`

```swift
public var batchDelay: Int
```

The delay, in minutes, between batches.

## Methods
### `init(batchCount:batchDelay:)`

```swift
public init(batchCount: Int, batchDelay: Int)
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
