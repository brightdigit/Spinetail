**STRUCT**

# `AudienceActivity.Impressions`

```swift
public struct Impressions: Model
```

Get report of a Facebook ad.

## Properties
### `date`

```swift
public var date: String?
```

### `impressions`

```swift
public var impressions: Int?
```

## Methods
### `init(date:impressions:)`

```swift
public init(date: String? = nil, impressions: Int? = nil)
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
