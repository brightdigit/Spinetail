**STRUCT**

# `IndustryStats`

```swift
public struct IndustryStats: Codable
```

The average campaign statistics for your industry.

## Properties
### `type`

```swift
public var type: String?
```

The type of business industry associated with your account. For example: retail, education, etc.

### `openRate`

```swift
public var openRate: Decimal?
```

The industry open rate.

### `clickRate`

```swift
public var clickRate: Decimal?
```

The industry click rate.

### `bounceRate`

```swift
public var bounceRate: Decimal?
```

The industry bounce rate.

### `unopenRate`

```swift
public var unopenRate: Decimal?
```

The industry unopened rate.

### `unsubRate`

```swift
public var unsubRate: Decimal?
```

The industry unsubscribe rate.

### `abuseRate`

```swift
public var abuseRate: Decimal?
```

The industry abuse rate.

## Methods
### `init(type:openRate:clickRate:bounceRate:unopenRate:unsubRate:abuseRate:)`

```swift
public init(type: String? = nil, openRate: Decimal? = nil, clickRate: Decimal? = nil, bounceRate: Decimal? = nil, unopenRate: Decimal? = nil, unsubRate: Decimal? = nil, abuseRate: Decimal? = nil)
```
