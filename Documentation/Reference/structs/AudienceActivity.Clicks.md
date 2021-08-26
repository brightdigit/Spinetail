**STRUCT**

# `AudienceActivity.Clicks`

```swift
public struct Clicks: Model
```

Get report of a Facebook ad.

## Properties
### `clicks`

```swift
public var clicks: Int?
```

### `date`

```swift
public var date: String?
```

## Methods
### `init(clicks:date:)`

```swift
public init(clicks: Int? = nil, date: String? = nil)
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
