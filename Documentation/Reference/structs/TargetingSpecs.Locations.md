**STRUCT**

# `TargetingSpecs.Locations`

```swift
public struct Locations: Model
```

Audience settings

## Properties
### `cities`

```swift
public var cities: [String]?
```

### `countries`

```swift
public var countries: [String]?
```

### `regions`

```swift
public var regions: [String]?
```

### `zips`

```swift
public var zips: [String]?
```

## Methods
### `init(cities:countries:regions:zips:)`

```swift
public init(cities: [String]? = nil, countries: [String]? = nil, regions: [String]? = nil, zips: [String]? = nil)
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
