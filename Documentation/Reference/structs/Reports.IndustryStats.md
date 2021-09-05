**STRUCT**

# `Reports.IndustryStats`

```swift
public struct IndustryStats: Model
```

The average campaign statistics for your industry.

## Properties
### `abuseRate`

```swift
public var abuseRate: Double?
```

The industry abuse rate.

### `bounceRate`

```swift
public var bounceRate: Double?
```

The industry bounce rate.

### `clickRate`

```swift
public var clickRate: Double?
```

The industry click rate.

### `openRate`

```swift
public var openRate: Double?
```

The industry open rate.

### `type`

```swift
public var type: String?
```

The type of business industry associated with your account. For example: retail, education, etc.

### `unopenRate`

```swift
public var unopenRate: Double?
```

The industry unopened rate.

### `unsubRate`

```swift
public var unsubRate: Double?
```

The industry unsubscribe rate.

## Methods
### `init(abuseRate:bounceRate:clickRate:openRate:type:unopenRate:unsubRate:)`

```swift
public init(abuseRate: Double? = nil, bounceRate: Double? = nil, clickRate: Double? = nil, openRate: Double? = nil, type: String? = nil, unopenRate: Double? = nil, unsubRate: Double? = nil)
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
