**STRUCT**

# `Audience.TargetingSpecs`

```swift
public struct TargetingSpecs: Model
```

Audience settings

## Properties
### `gender`

```swift
public var gender: Int?
```

### `interests`

```swift
public var interests: [Interests]?
```

### `locations`

```swift
public var locations: Locations?
```

### `maxAge`

```swift
public var maxAge: Int?
```

### `minAge`

```swift
public var minAge: Int?
```

## Methods
### `init(gender:interests:locations:maxAge:minAge:)`

```swift
public init(gender: Int? = nil, interests: [Interests]? = nil, locations: Locations? = nil, maxAge: Int? = nil, minAge: Int? = nil)
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
