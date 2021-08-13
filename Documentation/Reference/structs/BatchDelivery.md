**STRUCT**

# `BatchDelivery`

```swift
public struct BatchDelivery: Codable
```

Choose whether the campaign should use [Batch Delivery](https://mailchimp.com/help/schedule-batch-delivery/). Cannot be set to &#x60;true&#x60; for campaigns using [Timewarp](https://mailchimp.com/help/use-timewarp/).

## Properties
### `batchDelay`

```swift
public var batchDelay: Int
```

The delay, in minutes, between batches.

### `batchCount`

```swift
public var batchCount: Int
```

The number of batches for the campaign send.

## Methods
### `init(batchDelay:batchCount:)`

```swift
public init(batchDelay: Int, batchCount: Int)
```
