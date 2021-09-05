**STRUCT**

# `Status200.AudienceActivity`

```swift
public struct AudienceActivity: Model
```

Get report of a Facebook ad.

## Properties
### `clicks`

```swift
public var clicks: [Clicks]?
```

### `impressions`

```swift
public var impressions: [Impressions]?
```

### `revenue`

```swift
public var revenue: [Revenue]?
```

## Methods
### `init(clicks:impressions:revenue:)`

```swift
public init(clicks: [Clicks]? = nil, impressions: [Impressions]? = nil, revenue: [Revenue]? = nil)
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
