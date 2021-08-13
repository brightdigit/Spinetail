**STRUCT**

# `SubscriberStats`

```swift
public struct SubscriberStats: Codable
```

Open and click rates for this subscriber.

## Properties
### `avgOpenRate`

```swift
public var avgOpenRate: Decimal?
```

A subscriber&#x27;s average open rate.

### `avgClickRate`

```swift
public var avgClickRate: Decimal?
```

A subscriber&#x27;s average clickthrough rate.

## Methods
### `init(avgOpenRate:avgClickRate:)`

```swift
public init(avgOpenRate: Decimal? = nil, avgClickRate: Decimal? = nil)
```
