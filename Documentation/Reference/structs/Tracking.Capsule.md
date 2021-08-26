**STRUCT**

# `Tracking.Capsule`

```swift
public struct Capsule: Model
```

Deprecated

## Properties
### `notes`

```swift
public var notes: Bool?
```

Update contact notes for a campaign based on subscriber email addresses.

## Methods
### `init(notes:)`

```swift
public init(notes: Bool? = nil)
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
