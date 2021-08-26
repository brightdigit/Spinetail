**STRUCT**

# `Status200.Opens`

```swift
public struct Opens: Model
```

A summary of the interaction with the campaign.

## Properties
### `timestamp`

```swift
public var timestamp: DateTime
```

The date and time recorded for the action in ISO 8601 format.

## Methods
### `init(timestamp:)`

```swift
public init(timestamp: Date? = nil)
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
