**STRUCT**

# `Body.Location`

```swift
public struct Location: Model
```

Subscriber location information.

## Properties
### `latitude`

```swift
public var latitude: Double?
```

The location latitude.

### `longitude`

```swift
public var longitude: Double?
```

The location longitude.

## Methods
### `init(latitude:longitude:)`

```swift
public init(latitude: Double? = nil, longitude: Double? = nil)
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
