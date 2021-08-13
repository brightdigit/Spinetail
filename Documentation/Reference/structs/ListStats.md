**STRUCT**

# `ListStats`

```swift
public struct ListStats: Codable
```

The average campaign statistics for your list. This won&#x27;t be present if we haven&#x27;t calculated it yet for this list.

## Properties
### `subRate`

```swift
public var subRate: Decimal?
```

The average number of subscriptions per month for the list.

### `unsubRate`

```swift
public var unsubRate: Decimal?
```

The average number of unsubscriptions per month for the list.

### `openRate`

```swift
public var openRate: Decimal?
```

The average open rate (a percentage represented as a number between 0 and 100) per campaign for the list.

### `clickRate`

```swift
public var clickRate: Decimal?
```

The average click rate (a percentage represented as a number between 0 and 100) per campaign for the list.

## Methods
### `init(subRate:unsubRate:openRate:clickRate:)`

```swift
public init(subRate: Decimal? = nil, unsubRate: Decimal? = nil, openRate: Decimal? = nil, clickRate: Decimal? = nil)
```
