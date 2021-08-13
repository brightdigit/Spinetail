**STRUCT**

# `OpenLocationsLocations`

```swift
public struct OpenLocationsLocations: Codable
```

## Properties
### `countryCode`

```swift
public var countryCode: String?
```

The ISO 3166 2 digit country code.

### `region`

```swift
public var region: String?
```

An internal code for the region representing the more specific location area such as city or state. When this is blank, it indicates we know the country, but not the region.

### `regionName`

```swift
public var regionName: String?
```

The name of the region, if we have one. For blank \&quot;region\&quot; values, this will be \&quot;Rest of Country\&quot;.

### `opens`

```swift
public var opens: Int?
```

The number of unique campaign opens for a region.

## Methods
### `init(countryCode:region:regionName:opens:)`

```swift
public init(countryCode: String? = nil, region: String? = nil, regionName: String? = nil, opens: Int? = nil)
```
