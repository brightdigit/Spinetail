**STRUCT**

# `ReportSummary.ExtendedAt`

```swift
public struct ExtendedAt: Model
```

Report summary of facebook ad

## Properties
### `datetime`

```swift
public var datetime: String?
```

### `timezone`

```swift
public var timezone: String?
```

## Methods
### `init(datetime:timezone:)`

```swift
public init(datetime: String? = nil, timezone: String? = nil)
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
