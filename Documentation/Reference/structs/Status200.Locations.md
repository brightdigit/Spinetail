**STRUCT**

# `Status200.Locations`

```swift
public struct Locations: Model
```

Top open locations for a specific campaign.

## Properties
### `countryCode`

```swift
public var countryCode: String?
```

The ISO 3166 2 digit country code.

### `opens`

```swift
public var opens: Int?
```

The number of unique campaign opens for a region.

### `region`

```swift
public var region: String?
```

An internal code for the region representing the more specific location area such as city or state. When this is blank, it indicates we know the country, but not the region.

### `regionName`

```swift
public var regionName: String?
```

The name of the region, if we have one. For blank "region" values, this will be "Rest of Country".

## Methods
### `init(countryCode:opens:region:regionName:)`

```swift
public init(countryCode: String? = nil, opens: Int? = nil, region: String? = nil, regionName: String? = nil)
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
