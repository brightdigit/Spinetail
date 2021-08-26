**STRUCT**

# `Clicks.Locations`

```swift
public struct Locations: Model
```

An individual click location.

## Properties
### `country`

```swift
public var country: String?
```

The two-digit country code for a recorded click.

### `region`

```swift
public var region: String?
```

If available, a specific region where the click was recorded.

## Methods
### `init(country:region:)`

```swift
public init(country: String? = nil, region: String? = nil)
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
