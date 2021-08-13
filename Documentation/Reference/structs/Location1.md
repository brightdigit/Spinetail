**STRUCT**

# `Location1`

```swift
public struct Location1: Codable
```

Subscriber location information.

## Properties
### `latitude`

```swift
public var latitude: Decimal?
```

The location latitude.

### `longitude`

```swift
public var longitude: Decimal?
```

The location longitude.

### `gmtoff`

```swift
public var gmtoff: Int?
```

The time difference in hours from GMT.

### `dstoff`

```swift
public var dstoff: Int?
```

The offset for timezones where daylight saving time is observed.

### `countryCode`

```swift
public var countryCode: String?
```

The unique code for the location country.

### `timezone`

```swift
public var timezone: String?
```

The timezone for the location.

## Methods
### `init(latitude:longitude:gmtoff:dstoff:countryCode:timezone:)`

```swift
public init(latitude: Decimal? = nil, longitude: Decimal? = nil, gmtoff: Int? = nil, dstoff: Int? = nil, countryCode: String? = nil, timezone: String? = nil)
```
