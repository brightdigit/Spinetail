**STRUCT**

# `TargetingSpecs.Interests`

```swift
public struct Interests: Model
```

Audience settings

## Properties
### `name`

```swift
public var name: String?
```

## Methods
### `init(name:)`

```swift
public init(name: String? = nil)
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
