**STRUCT**

# `MembersRemoved.Location`

```swift
public struct Location: Model
```

Subscriber location information.

## Properties
### `countryCode`

```swift
public var countryCode: String?
```

The unique code for the location country.

### `dstoff`

```swift
public var dstoff: Int?
```

The offset for timezones where daylight saving time is observed.

### `gmtoff`

```swift
public var gmtoff: Int?
```

The time difference in hours from GMT.

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

### `timezone`

```swift
public var timezone: String?
```

The timezone for the location.

## Methods
### `init(countryCode:dstoff:gmtoff:latitude:longitude:timezone:)`

```swift
public init(countryCode: String? = nil, dstoff: Int? = nil, gmtoff: Int? = nil, latitude: Double? = nil, longitude: Double? = nil, timezone: String? = nil)
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
