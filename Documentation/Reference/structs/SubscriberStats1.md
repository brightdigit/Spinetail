**STRUCT**

# `SubscriberStats1`

```swift
public struct SubscriberStats1: Codable
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

### `ecommerceData`

```swift
public var ecommerceData: EcommerceStats?
```

## Methods
### `init(avgOpenRate:avgClickRate:ecommerceData:)`

```swift
public init(avgOpenRate: Decimal? = nil, avgClickRate: Decimal? = nil, ecommerceData: EcommerceStats? = nil)
```
